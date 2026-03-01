# AWS Dart EKS GPU DRA Demo

This is a Dart translation of:
https://github.com/kingwill101/pulumi-dart/tree/master/pulumi_examples/aws-ts-eks-gpu-dra

The example provisions:
1. EKS 1.34 cluster with system and GPU managed node groups.
2. NVIDIA GPU Operator and DRA driver via Helm.
3. Core add-ons (CoreDNS, Pod Identity Agent, EBS CSI).
4. Monitoring stack (Prometheus/Grafana).
5. MIG claim template resources and supporting namespaces/config.

## Prerequisites

1. Pulumi CLI.
2. AWS credentials with EKS/IAM/EC2 permissions.
3. Dart SDK.

## Configuration

```bash
pulumi config set clusterName gpu-dra-cluster
```

## Deploy

```bash
cd examples/aws/eks-gpu-dra
pulumi stack init dev
pulumi up
```

## Outputs

- `kubeconfig`
- `clusterNameOutput`
- `grafanaPassword`
- `vpcId`
- `privateSubnetIds`
- `publicSubnetIds`

## Cleanup

```bash
pulumi destroy
```
