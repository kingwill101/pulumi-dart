# Pushing a Local Image to ECR (Dart)

This example builds a local Docker image and pushes it to ECR using `awsx.ecr.RegistryImage`.
It demonstrates:

- untagged (`latest`) push
- tagged push (`v1.0.0`)
- digest-based push (`test`)

Required config:

- `message` - build arg passed into the local Docker image

Run with:

- `pulumi config set message "Hello Pulumi!"`
- `pulumi up`
