[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/hub-and-spoke-network/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/hub-and-spoke-network/README.md#gh-dark-mode-only)

# Hub-and-Spoke Network with Centralized Egress (Dart)

This example creates a hub-and-spoke network topology on AWS using:

- AWS Transit Gateway
- An inspection VPC with NAT gateway for centralized internet egress
- Two spoke VPCs attached to Transit Gateway
- Transit Gateway route tables, association, and propagation rules

## Prerequisites

- [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
- [Install Dart](https://dart.dev/get-dart)
- Configure [AWS credentials](https://www.pulumi.com/docs/iac/clouds/aws/get-started/)

## Deploy

```sh
pulumi up
```

## Outputs

- `natGatewayEip`: Public IP of the inspection VPC NAT gateway.

```sh
pulumi stack output natGatewayEip
```

## Cleanup

```sh
pulumi destroy
pulumi stack rm
```
