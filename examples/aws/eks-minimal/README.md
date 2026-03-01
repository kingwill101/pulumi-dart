# eks-minimal

This example demonstrates consuming
[Pulumi AWS EKS Components](https://github.com/pulumi/pulumi-eks)
from Dart.

The stack:

- Looks up the default VPC
- Finds subnets in that VPC and selects two
- Creates an EKS cluster in those subnets

## Running the example

1. Start a new stack:

    ```bash
    pulumi stack init dev
    ```

1. Configure your AWS region, for example:

    ```bash
    pulumi config set aws:region us-east-1
    ```

1. Deploy the example. Note it will take up to 10 minutes to provision
   the EKS cluster:

    ```bash
    pulumi up
    ```

1. Access the Kubernetes Cluster using `kubectl`.

   To access your new Kubernetes cluster using `kubectl`, we need to
   setup the `kubeconfig` file and download `kubectl`. We can leverage
   the Pulumi stack output in the CLI, as Pulumi facilitates exporting
   these objects for us.

    ```bash
    $ pulumi stack output kubeconfig --show-secrets > kubeconfig
    $ export KUBECONFIG=$PWD/kubeconfig
    $ kubectl version
    $ kubectl cluster-info
    $ kubectl get nodes
    ```
