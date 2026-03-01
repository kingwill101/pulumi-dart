# Dockerized App on AWS ECS Fargate (Dart)

This example defines a basic Dockerized application and all of the infrastructure required to run it on AWS using Pulumi Dart.

It provisions:

- A VPC using `pulumi_awsx`
- An ECS cluster
- An ALB + target group + listener
- An ECR repository and Docker image build/push
- An ECS Fargate service behind the load balancer

## Prerequisites

- Pulumi CLI
- AWS credentials configured for Pulumi
- Dart SDK (3.10+)
- Docker daemon running locally

## Running the example

1. Install dependencies:

```bash
dart pub get
```

2. Create/select a stack and set region:

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
```

3. Deploy:

```bash
pulumi up
```

4. Get the application URL:

```bash
pulumi stack output url
```

5. Destroy when finished:

```bash
pulumi destroy
pulumi stack rm
```
