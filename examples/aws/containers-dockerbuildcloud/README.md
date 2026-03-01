# Deploy a container with a DBC-built image on AWS Fargate

Deploys a AWS Fargate service. The service uses a Docker image that is build with Docker Build Cloud (DBC). The image is pushed to AWS ECR. This template prompts the user for an existing DBC builder.

Last revision: May 2024.

## 📋 Pre-requisites

- [Docker Build Cloud (DBC) builder](https://build.docker.com/)
- 🚨 You **must** complete the [DBC builder setup steps](https://docs.docker.com/build/cloud/setup/#steps) 🚨
- Docker Desktop / CLI
- [Pulumi CLI](https://www.pulumi.com/docs/get-started/install/)
- *Recommended* [Pulumi Cloud account](https://app.pulumi.com/signup)
- [npm](https://www.npmjs.com/get-npm)
- AWS account and local credentials configured

## 👩‍🏫 Get started

This Pulumi example is written as a template. It is meant to be copied via `pulumi new` as follows:

```bash
pulumi new https://github.com/pulumi/examples/tree/master/aws-ts-containers-dockerbuildcloud
npm install
```

Once copied to your machine, feel free to edit as needed.

Alternatively, click the button below to use [Pulumi Deployments](https://www.pulumi.com/docs/pulumi-cloud/deployments/) to deploy this app:

[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/containers-dockerbuildcloud/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/containers-dockerbuildcloud/README.md#gh-dark-mode-only)

## 🎬 How to run

To deploy your infrastructure, run:

```bash
$ pulumi up
# select 'yes' to confirm the expected changes
# wait a bit for everything to get deployed
# ...
# confirm your service is up and running
$ curl $(pulumi stack output url)
# 🎉 Ta-Da!
```

## 🧹 Clean up

To clean up your infrastructure, run:

```bash
$ pulumi destroy
# select 'yes' to confirm the expected changes
```
