# AWS Dart Examples Status

This file catalogs AWS source examples and tracks Dart porting status.

## Scope

- Source set: `pulumi_examples/aws-*`
- Dart target path: `examples/aws/<example>/`
- Tracking is by AWS concept/example name.

## Progress

- Total AWS concepts tracked: **74**
- Resolved (Dart directory exists): **74**
- Remaining: **0**

## Tracking checklist

- [x] airflow
- [x] ansible-wordpress
- [x] apigateway
- [x] apigateway-auth0
- [x] apigateway-eventbridge
- [x] apigateway-lambda-serverless
- [x] apigateway-routes (covers `aws-go-routes`, `aws-py-routes`, `aws-ts-routes`)
- [x] apigatewayv2-eventbridge
- [x] apigatewayv2-http-api
- [x] apigatewayv2-http-api-quickcreate
- [x] appsync
- [x] assume-role
- [x] console-slack-notification
- [x] containers
- [x] containers-dockerbuild
- [x] containers-dockerbuildcloud
- [x] cue-eks
- [x] django-voting-app
- [x] dynamicresource
- [x] ec2-provisioners
- [x] ecr-cache
- [x] ecs-anywhere
- [x] ecs-instances-autoapi
- [x] eks
- [x] eks-distro
- [x] eks-gpu-dra
- [x] eks-hello-world
- [x] eks-migrate-nodegroups
- [x] eks-minimal
- [x] esc-external-adapter-lambda
- [x] fargate
- [x] hello-fargate
- [x] hub-and-spoke-network
- [x] k8s-mern-voting-app
- [x] k8s-voting-app
- [x] lambda
- [x] lambda-efs
- [x] lambda-gateway
- [x] lambda-secrets
- [x] lambda-slack
- [x] lambda-thumbnailer
- [x] lambda-webserver
- [x] langserve
- [x] localai-flowise
- [x] multi-language-lambda
- [x] netlify-cms-and-oauth
- [x] nextjs
- [x] oidc-provider-pulumi-cloud
- [x] organizations
- [x] pern-voting-app
- [x] pulumi-miniflux
- [x] pulumi-webhooks
- [x] redshift-glue-etl
- [x] resources
- [x] ruby-on-rails
- [x] s3-folder
- [x] s3-folder-component
- [x] s3-lambda-copyzip
- [x] scheduled-function
- [x] secrets-manager
- [x] serverless-datawarehouse
- [x] serverless-raw
- [x] slackbot
- [x] stackreference
- [x] stackreference-architecture
- [x] static-website
- [x] stepfunctions
- [x] synthetics-canary
- [x] thumbnailer
- [x] twitter-athena
- [x] voting-app
- [x] vpc-with-ecs-fargate
- [x] webserver
- [x] wordpress-fargate-rds

## Rule reminder

For every resolved example:
- `lib/main.dart` contains stack logic.
- `bin/main.dart` launches the stack from `lib/main.dart`.
