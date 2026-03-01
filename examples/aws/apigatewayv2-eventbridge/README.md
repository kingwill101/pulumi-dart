[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigatewayv2-eventbridge/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigatewayv2-eventbridge/README.md#gh-dark-mode-only)

# API Gateway V2 to EventBridge (Dart)

This example creates an AWS API Gateway proxy integration with EventBridge and Lambda.

## Deploying

1. Install dependencies:

```bash
dart pub get
```

2. Create a stack:

```bash
pulumi stack init dev
```

3. Set region:

```bash
pulumi config set aws:region us-east-2
```

4. Deploy:

```bash
pulumi up
```

5. Test:

```bash
curl --data '{"some-key":"some-value"}' \
  --header "Content-Type: application/json" \
  "$(pulumi stack output url)/uploads"
```

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
