# K8s Ruby on Rails PostgreSQL (Dart)

This folder contains a Dart port of:

- `pulumi_examples/gcp-ts-k8s-ruby-on-rails-postgresql`

The program deploys:

- a Google Kubernetes Engine (GKE) cluster
- a Cloud SQL PostgreSQL instance
- a Ruby on Rails container image built from `./app`
- a Kubernetes deployment + load-balanced service for the app

## Run

```bash
cd examples/gcp/k8s-ruby-on-rails-postgresql
dart pub get
pulumi stack init <stack-name>
pulumi up
```

## Configure

The stack requires these values:

```bash
pulumi config set dockerUsername <your-dockerhub-username>
pulumi config set dockerPassword --secret <your-dockerhub-password>
pulumi config set dbPassword --secret <your-db-password>
pulumi config set clusterPassword --secret <your-cluster-password>
pulumi config set dbUsername rails # optional, defaults to rails
pulumi config set clusterNodeCount 3 # optional, defaults to 3
pulumi config set clusterNodeMachineType n1-standard-1 # optional, defaults to n1-standard-1
pulumi config set masterVersion # optional, defaults to latest master version
pulumi config set gcp:project <your-gcp-project-id>
pulumi config set gcp:zone us-west1-a # optional, template default
```

## Outputs

- `appName`
- `appAddress`
- `dbAddress`
- `kubeConfig`

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
