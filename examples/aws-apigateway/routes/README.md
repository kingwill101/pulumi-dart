# Routes in API Gateway (Dart)

This is a Dart port of `thirdparty/pulumi_examples/aws-apigateway-ts-routes/`.

It provisions a `pulumi_aws_apigateway.RestAPI` with multiple route patterns:

- static files from `www/`
- Lambda-backed route
- HTTP proxy route
- Swagger-defined route
- Cognito-authorized route
- Lambda-authorized route
- API-key-protected route

It also creates:

- a secondary Swagger API
- API key + usage plan + usage-plan-key attachment
- Cognito user pool and app client

## Prerequisites

- AWS credentials configured
- AWS region set

```bash
pulumi config set aws:region us-east-2
```

## Deploy

```bash
pulumi up
```

## Useful outputs

- `url`
- `swaggerUrl`
- `apiKeyValue`
- `userPoolId`
- `userPoolClientId`

## Clean up

```bash
pulumi destroy --yes
```
