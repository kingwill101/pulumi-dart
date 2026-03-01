# Zero Downtime Migration of EKS Node Groups

Creates an EKS cluster with two managed node groups to model migration:

- A standard worker node group
- A larger, tainted node group intended for isolated workloads

It also creates a Kubernetes namespace and exports core cluster details.

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi up
```

## Outputs

- `vpcId`
- `allVpcSubnets`
- `kubeconfig`
- `clusterName`
- `namespaceName`
- `ngStandardName`
- `ng2xlargeName`
- `nginxNodeSelectorInstanceType`

[tutorial-migrate-nodegroups]: https://www.pulumi.com/docs/tutorials/kubernetes/eks-migrate-nodegroups/
