[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/resources/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/resources/README.md#gh-dark-mode-only)

# AWS Resources (Dart)

A Pulumi program that demonstrates creating various AWS resources in Dart.

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

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
