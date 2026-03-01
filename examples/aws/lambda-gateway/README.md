[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/lambda-gateway/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/lambda-gateway/README.md#gh-dark-mode-only)

# AWS Dart Lambda With API Gateway

This example creates a Lambda that does a simple `ToUpper` on the path input of an API request and returns it.

## Deploying the app

### Prerequisites

1. [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
2. [Configure AWS credentials](https://www.pulumi.com/docs/intro/cloud-providers/aws/setup/)
3. [Install Dart](https://dart.dev/get-dart)
4. [Install Go](https://go.dev/doc/install) (used to build the sample handler zip)

### Steps

After cloning this repo, run these commands from this directory:

1. Build the lambda handler zip:

```bash
make build
```

2. Install Dart dependencies:

```bash
dart pub get
```

3. Create a new Pulumi stack:

```bash
pulumi stack init dev
```

4. Set the AWS region:

```bash
pulumi config set aws:region us-east-2
```

5. Deploy:

```bash
pulumi up
```

6. Invoke the API:

```bash
curl "$(pulumi stack output 'invocation URL')/helloworld"
```

7. Destroy when done:

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
