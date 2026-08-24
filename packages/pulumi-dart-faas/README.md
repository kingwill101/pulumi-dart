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

- `DartFunctionSource`:
  - provider-neutral source selection
  - exactly one mode must be set
- `DartBuildArchive`:
  - supports `dart compile exe`, AOT/JIT snapshots, kernel, JavaScript, Wasm,
    and `dart build cli`
  - packages the build output as a Pulumi archive
  - reuses the active Dart/FVM executable unless `dartExecutable` is provided
  - automatically runs `build_runner` when it appears in the resolved package
    configuration; use `buildRunner: .always` or `.never` to override detection
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
        entryPoint: 'backend/bin/server.dart',
      ),
    );

    final app = faas.AwsLambdaDartFunction(
      'hello',
      args: faas.DartFunctionArgs(
        source: faas.DartFunctionSource.archive(archive: build.archive),
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

Archives may come from the local filesystem or any object store that can issue
a signed HTTPS URL, including Cloudflare R2 and other S3-compatible services:

```dart
final source = faas.DartFunctionSource.archive(
  archive: pulumi.RemoteArchive(signedObjectUrl).input(),
);
```

`DartFunctionSource.awsS3` is a separate AWS-only fast path because Lambda's
native bucket-and-key deployment API requires an AWS S3 object.

## API surface

- Shared source and HTTP settings:
  - `DartFunctionSource.image`
  - `DartFunctionSource.archive`
  - `DartFunctionSource.awsS3` (AWS S3 only)
  - `DartFunctionHttpArgs`
- Shared build helper:
  - `DartBuildArchive`
  - `DartBuildArchiveArgs`
  - `DartBuildTarget.executable`
  - `DartBuildTarget.aotSnapshot`
  - `DartBuildTarget.jitSnapshot`
  - `DartBuildTarget.kernel`
  - `DartBuildTarget.javascript`
  - `DartBuildTarget.webAssembly`
  - `DartBuildTarget.cli`
- AWS adapter:
  - `AwsLambdaDartFunction`
  - `DartFunctionArgs`
- GCP adapter:
  - `GcpCloudRunDartFunction`
  - `GcpDartFunctionArgs`
  - `GcpDartFunctionScalingArgs`
  - `GcpDartFunctionComputeArgs`
