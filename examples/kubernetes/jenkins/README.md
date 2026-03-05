# Kubernetes Jenkins (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-jenkins/`.

It deploys:

- A Kubernetes `Secret` for Jenkins credentials
- A Kubernetes `PersistentVolumeClaim` for Jenkins data
- A Jenkins `Deployment`
- A Jenkins `Service`

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Configure

Set Jenkins credentials:

```bash
pulumi config set username <your-jenkins-username>
pulumi config set password <your-jenkins-password> --secret
```

Set minikube mode:

```bash
pulumi config set isMinikube true
```

For cloud clusters, use:

```bash
pulumi config set isMinikube false
```

## Deploy

```bash
pulumi up
```

## Outputs

- `externalIp`

If `isMinikube` is true, access Jenkins with:

```bash
kubectl port-forward svc/jenkins 8080:80
```

Then open `http://localhost:8080/login`.

## Notes

- This port keeps the Jenkins deployment/service flow from upstream.
- The upstream optional MetalLB auto-enable command flow is not included; if your local cluster needs MetalLB, enable it separately before deploy.

## Destroy

```bash
pulumi destroy --yes
```
