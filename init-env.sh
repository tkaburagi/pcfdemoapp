#!/bin/sh

cf login -a api.system.kabdev.xyz --skip-ssl-validation -o pcfdemoapp -s staging -u kabu -p kabu
cf delete pcfdemoapp -f 
cf delete-route apps.kabdev.xyz --hostname pcfdemoapp-staging -f

cf login -a api.system.kabdev.xyz --skip-ssl-validation -o pcfdemoapp -s production -u kabu -p kabu
cf delete pcfdemoapp -f 
cf delete-route apps.kabdev.xyz --hostname pcfdemoapp -f