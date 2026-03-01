# AWS Dart CUE EKS Example

This is a Dart translation of `aws-yaml-cue-eks` from this repository:
https://github.com/kingwill101/pulumi-dart/tree/master/pulumi_examples/aws-yaml-cue-eks

## Prerequisites

1. Install Pulumi: https://www.pulumi.com/docs/get-started/install/
2. Configure AWS credentials for Pulumi.
3. Install Dart SDK.

## Deploy

```bash
cd examples/aws/cue-eks
pulumi stack init dev
pulumi up
```

## Cleanup

```bash
pulumi destroy
```
