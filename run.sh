#!/bin/bash

aws --profile=libra-dev apigateway get-client-certificate --client-certificate-id ${AWS_APIGATEWAY_CLIENT_CERT} | python3 -c "import sys, json; print(json.load(sys.stdin)['pemEncodedCertificate'])" > /etc/ssl/private/apigateway.pem
chmod 600 /etc/ssl/private/apigateway.pem
