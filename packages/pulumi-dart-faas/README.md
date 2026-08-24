# pulumi_dart_faas

`pulumi_dart_faas` is the Dart-first serverless foundation package for Pulumi.
It keeps the deployable source contract, local build/archive flow, and provider
adapters in one package so AWS Lambda and GCP Cloud Run can share the same
application-facing model.

## What this package gives you

- One source model for image-based, archive-based, and uploaded-binary flows.
- One local build helper for turning a Dart entrypoint into a deployable
  archive.
- AWS Lambda support for:
  - container image deployments
  - zip deployments from S3
  - zip deployments from a Pulumi archive upload
- GCP Cloud Run support for:
  - Artifact Registry image deployments
  - source archive deployments backed by Cloud Storage

## Core concepts

- `DartFunctionSourceArgs`:
  - provider-neutral source selection
  - exactly one mode must be set
- `DartBuildArchive`:
  - compiles a Linux Dart executable locally
  - packages the build output as a Pulumi archive
  - designed to feed archive-capable provider adapters
- `AwsLambdaDartFunction`:
  - AWS implementation of the shared source contract
- `GcpCloudRunDartFunction`:
  - GCP implementation of the shared source contract

## Quick example

```dart
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;

class AppStack extends Stack {
  AppStack() {
    final build = faas.DartBuildArchive(
      'build',
      args: faas.DartBuildArchiveArgs(
        entryPoint: 'backend/bin/server.dart'.input(),
      ),
    );

    final app = faas.AwsLambdaDartFunction(
      'hello',
      args: faas.DartFunctionArgs(
        source: faas.DartFunctionSourceArgs(
          binaryUpload: faas.DartFunctionSourceBinaryUploadArgs(
            sourceArchive: build.archive,
          ),
        ),
      ),
    );

    registerOutputs({'url': app.functionUrl});
  }
}
```

## Examples

- AWS examples:
  - `packages/pulumi-dart-faas/example/aws-faas/`
- GCP examples:
  - `packages/pulumi-dart-faas/example/gcp-faas/`

## API surface

- Shared source and HTTP settings:
  - `DartFunctionSourceImageArgs`
  - `DartFunctionSourceZipS3Args`
  - `DartFunctionSourceBinaryUploadArgs`
  - `DartFunctionSourceArgs`
  - `DartFunctionHttpArgs`
- Shared build helper:
  - `DartBuildArchive`
  - `DartBuildArchiveArgs`
- AWS adapter:
  - `AwsLambdaDartFunction`
  - `DartFunctionArgs`
- GCP adapter:
  - `GcpCloudRunDartFunction`
  - `GcpDartFunctionArgs`
  - `GcpDartFunctionScalingArgs`
  - `GcpDartFunctionComputeArgs`
