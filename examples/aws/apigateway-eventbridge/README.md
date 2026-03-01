[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigateway-eventbridge/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/apigateway-eventbridge/README.md#gh-dark-mode-only)

# API Gateway V1 to EventBridge (Dart)

API Gateway V1 integration with EventBridge and Lambda, including request-model validation.

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
pulumi config set aws:region us-west-2
```

4. Deploy:

```bash
pulumi up
```

5. Test invalid and valid payloads:

```bash
curl --data '{"some-invalid-property-name":"Chris"}' \
  --header "Content-Type: application/json" \
  "$(pulumi stack output url)/uploads"

curl --data '{"name":"Chris"}' \
  --header "Content-Type: application/json" \
  "$(pulumi stack output url)/uploads"
```

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
