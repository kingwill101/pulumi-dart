# AWS App Platform: Bring Your Own VPC

Deploys into an existing VPC and existing public subnets.

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi config set aws-app-platform-bring-your-own-vpc:vpcId vpc-1234abcd
pulumi config set aws-app-platform-bring-your-own-vpc:publicSubnetIds subnet-aaa,subnet-bbb
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```

