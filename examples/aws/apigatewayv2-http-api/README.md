[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigatewayv2-http-api/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigatewayv2-http-api/README.md#gh-dark-mode-only)

# AWS API Gateway V2 HTTP API (Dart)

Set up an HTTP API using AWS API Gateway V2 with route, stage, and Lambda integration.

## Deploying

1. Install dependencies:

```bash
dart pub get
```

2. Create a stack:

```bash
pulumi stack init http-api
```

3. Configure region:

```bash
pulumi config set aws:region us-east-2
```

4. Deploy:

```bash
pulumi up
```

5. Invoke endpoint:

```bash
curl "$(pulumi stack output endpoint)"
```

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
