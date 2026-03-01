# Routes in API Gateway (Dart)

This example uses `pulumi_aws_apigateway` to create API Gateway routes backed by:
- Static files from a local directory
- A Lambda handler
- An HTTP proxy target
- A route defined with raw Swagger integration data

It also creates:
- A second API from a full Swagger string
- API key + usage plan for a key-protected route

## Prerequisites

- Pulumi CLI
- AWS credentials configured
- Dart SDK 3.10+

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-east-2
pulumi up
```

## Example checks

```bash
curl -w '\n' "$(pulumi stack output url)static"
curl -w '\n' "$(pulumi stack output url)lambda"
curl -w '\n' "$(pulumi stack output url)proxy"
curl -w '\n' "$(pulumi stack output url)swagger"
curl -w '\n' -H "x-api-key: $(pulumi stack output apiKeyValue --show-secrets)" "$(pulumi stack output url)key-authorized"
```
