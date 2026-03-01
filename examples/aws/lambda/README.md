[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/lambda/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/lambda/README.md#gh-dark-mode-only)

# AWS Dart Lambda

This example creates an AWS Lambda function that does a simple `ToUpper` on string input and returns it.

## Deploying the app

### Prerequisites

1. [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
2. [Configure AWS credentials](https://www.pulumi.com/docs/intro/cloud-providers/aws/setup/)
3. [Install Dart](https://dart.dev/get-dart)

### Steps

After cloning this repo, run these commands from this directory:

1. Install Dart dependencies:

```bash
dart pub get
```

2. Create a new Pulumi stack:

```bash
pulumi stack init dev
```

3. Set the deployment region:

```bash
pulumi config set aws:region us-east-1
```

4. Deploy the stack:

```bash
pulumi up
```

5. Invoke the Lambda from AWS CLI with `foo` as payload:

```bash
aws lambda invoke \
  --function-name $(pulumi stack output lambda) \
  --region $(pulumi config get aws:region) \
  --cli-binary-format raw-in-base64-out \
  --payload '"foo"' \
  output.json

cat output.json
# "FOO"
```

6. Destroy when done:

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
