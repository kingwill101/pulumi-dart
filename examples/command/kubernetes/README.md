# kubernetes (Dart)

Dart port of `thirdparty/pulumi-command/examples/kubernetes`.

## Configure

```bash
pulumi config set vpcId <vpc-id>
pulumi config set publicSubnetIds <subnet-1,subnet-2>
pulumi config set privateSubnetIds <subnet-3,subnet-4>
```

## Deploy

```bash
pulumi up
```

## Notes

- This creates an EKS cluster.
- The `cleanupKubernetesNamespaces` command runs during destroy and deletes namespaces via `kubectl`.
