# Using Amazon EFS with AWS Lambda (Dart)

This example provisions:

- A VPC (via `awsx`)
- An EFS file system with mount targets and an access point
- Three Lambda functions mounted to EFS at `/mnt/storage`
- An API Gateway with routes for file upload, file read, and command execution

## Prerequisites

- Dart SDK
- Pulumi CLI
- AWS credentials configured for Pulumi

## Running the example

1. Install dependencies:

```bash
dart pub get
```

2. Create and select a stack:

```bash
pulumi stack init dev
```

3. Set region if needed:

```bash
pulumi config set aws:region us-east-2
```

4. Deploy:

```bash
pulumi up
```

5. Test:

```bash
curl -X POST -d '<h1>Hello world</h1>' "$(pulumi stack output url)files/index.html"
curl -X GET "$(pulumi stack output url)files/index.html"
```

6. Clean up:

```bash
pulumi destroy
pulumi stack rm
```
