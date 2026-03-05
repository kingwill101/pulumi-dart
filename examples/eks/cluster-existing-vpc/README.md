# EKS Cluster on Existing VPC (Dart)

This Dart-first example uses `pulumi_eks` to create an EKS cluster in an existing VPC and existing public subnets.

## Why this variant

- Avoids default-VPC lookup behavior
- Makes networking inputs explicit
- Skips default worker node group for a lighter baseline (`skipDefaultNodeGroup: true`)

## Required stack config

```bash
pulumi config set vpcId vpc-xxxxxxxx
pulumi config set --path publicSubnetIds[0] subnet-aaaaaaaa
pulumi config set --path publicSubnetIds[1] subnet-bbbbbbbb
```

## Optional stack config

```bash
pulumi config set clusterName pulumi-dart-eks
```

## Deploy

```bash
pulumi up
```

## Outputs

- `kubeconfigJson`
- `clusterSecurityGroupId`
- `oidcProviderArn`

## Destroy

```bash
pulumi destroy --yes
```
