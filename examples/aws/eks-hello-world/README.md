# Amazon EKS Hello World (Dart)

This example deploys:

- An AWS VPC with two AZs
- An EKS cluster
- A Kubernetes namespace
- An NGINX deployment
- A `LoadBalancer` service

## Prerequisites

- Pulumi CLI
- Dart SDK
- AWS credentials configured
- `aws-iam-authenticator` available in your environment

## Deploy

```bash
pulumi stack init eks-demo
pulumi config set aws:region us-west-2
pulumi up
```

## Outputs

- `kubeconfig`
- `namespaceName`
- `deploymentName`
- `serviceName`
- `serviceHostname`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```

	> **Note:** Pulumi auto-generates a suffix for all objects.
    > See the [Pulumi Programming Model](https://www.pulumi.com/docs/intro/concepts/resources/#autonaming) for more info.
    >
    > ```
    > deploymentName : "helloworld-58jkmc7c"
    > ...
    > namespaceName  : "helloworld-xaldhgca"
    > serviceHostname: "a71f5ab3f2a6e11e3ac39200f4a9ad5d-1297981966.us-west-2.elb.amazonaws.com"
    > serviceName    : "helloworld-3fc2uhh7"
    > ```

    If you visit the FQDN listed in `serviceHostname` you should land on the
    NGINX welcome page. Note that it may take a minute or so for the
    LoadBalancer to become active on AWS.

1. Access the Kubernetes Cluster using `kubectl`

    To access your new Kubernetes cluster using `kubectl`, we need to set up the
    `kubeconfig` file and download `kubectl`. We can leverage the Pulumi
    stack output in the CLI, as Pulumi facilitates exporting these objects for us.

    ```bash
    $ pulumi stack output kubeconfig --show-secrets > kubeconfig
    $ export KUBECONFIG=$PWD/kubeconfig
    $ export KUBERNETES_VERSION=1.11.5 && sudo curl -s -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBERNETES_VERSION}/bin/linux/amd64/kubectl && sudo chmod +x /usr/local/bin/kubectl

    $ kubectl version
    $ kubectl cluster-info
    $ kubectl get nodes
    ```

    We can also use the stack output to query the cluster for our newly created Deployment:

    ```bash
    $ kubectl get deployment $(pulumi stack output deploymentName) --namespace=$(pulumi stack output namespaceName)
    $ kubectl get service $(pulumi stack output serviceName) --namespace=$(pulumi stack output namespaceName)
    ```

    We can also create another NGINX Deployment into the `default` namespace using
    `kubectl` natively:

    ```bash
    $ kubectl create deployment my-nginx --image=nginx
    $ kubectl get pods
    $ kubectl delete deployment my-nginx
    ```

    By deploying the NGINX image in this way, it is outside of Pulumi's control. But this is simply to show that we can control our cluster via the CLI as well.

1. Experimentation

    From here on, feel free to experiment. Make edits and run `pulumi up` afterwards to incrementally update your stack.

    ### Running Off-the-Shelf Guestbook YAML

    For example, if you wish to pull existing Kubernetes YAML manifests into
    Pulumi to aid in your transition, append the following code block to the existing
    `index.ts` file and run `pulumi up`.

    This is an example of how to create the standard Kubernetes Guestbook manifests in
    Pulumi using the Guestbook YAML manifests. We take the additional steps of transforming
    its properties to use the same Namespace and metadata labels that
    the NGINX stack uses, and also make its frontend service use a
    LoadBalancer typed Service to expose it publicly.

    ```typescript
    // Create resources for the Kubernetes Guestbook from its YAML manifests
    const guestbook = new k8s.yaml.ConfigFile("guestbook",
        {
            file: "https://raw.githubusercontent.com/pulumi/pulumi-kubernetes/master/tests/sdk/nodejs/examples/yaml-guestbook/yaml/guestbook.yaml",
            transformations: [
                (obj: any) => {
                    // Do transformations on the YAML to use the same namespace and
                    // labels as the NGINX stack above
                    if (obj.metadata.labels) {
                        obj.metadata.labels['appClass'] = namespaceName
                    } else {
                        obj.metadata.labels = appLabels
                    }

                    // Make the 'frontend' Service public by setting it to be of type
                    // LoadBalancer
                    if (obj.kind == "Service" && obj.metadata.name == "frontend") {
                        if (obj.spec) {
                            obj.spec.type = "LoadBalancer"
                        }
                    }
                }
            ],
        },
        {
            providers: { "kubernetes": clusterProvider },
        },
    );

    // Export the Guestbook public LoadBalancer endpoint
    export const guestbookPublicIP =
        guestbook.getResourceProperty("v1/Service", "frontend", "status").apply(s => s.loadBalancer.ingress[0].ip);
    ```

1. Once you've finished experimenting, tear down your stack's resources by destroying and removing it:

    ```bash
    $ pulumi destroy --yes
    $ pulumi stack rm --yes
    ```
