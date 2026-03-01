[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/s3-folder-component/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/s3-folder-component/README.md#gh-dark-mode-only)

# Static Website on Amazon S3 (Dart component)

Component version of the S3 folder example.

## Deploying

1. Install dependencies:

```bash
dart pub get
```

2. Create a stack:

```bash
pulumi stack init dev
```

3. Set region:

```bash
pulumi config set aws:region us-west-2
```

4. Deploy:

```bash
pulumi up
```

5. View outputs:

```bash
pulumi stack output bucketName
pulumi stack output websiteUrl
```

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
