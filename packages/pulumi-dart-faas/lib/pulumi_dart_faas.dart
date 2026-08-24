/// Dart-first serverless foundations for Pulumi.
///
/// This package provides a shared function source model plus provider adapters
/// for AWS Lambda and GCP Cloud Run. The goal is to let application code keep a
/// Dart-centric deployment contract while still exposing the provider-specific
/// outputs and controls needed for real deployments.
///
/// ## Main building blocks
/// - [DartFunctionSource] selects one deployment source mode.
/// - [DartBuildArchive] compiles and archives a Dart entrypoint locally.
/// - [AwsLambdaDartFunction] deploys the shared model to AWS Lambda.
/// - [GcpCloudRunDartFunction] deploys the shared model to GCP Cloud Run.
///
/// ## Supported source modes
/// - `image`: build and publish a container image.
/// - `zipS3`: deploy a prebuilt AWS zip artifact stored in S3.
/// - `binaryUpload`: upload a Pulumi archive produced locally, for example via
///   [DartBuildArchive].
///
/// ## Typical usage
/// ```dart
/// import 'package:pulumi/pulumi.dart';
/// import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;
///
/// class AppStack extends Stack {
///   AppStack() {
///     final build = faas.DartBuildArchive(
///       'build',
///       args: faas.DartBuildArchiveArgs(
///         entryPoint: 'backend/bin/server.dart',
///       ),
///     );
///
///     final fn = faas.AwsLambdaDartFunction(
///       'hello',
///       args: faas.DartFunctionArgs(
///         source: faas.DartFunctionSource.archive(archive: build.archive),
///       ),
///     );
///
///     registerOutputs({'url': fn.functionUrl});
///   }
/// }
/// ```
library pulumi_dart_faas;

export 'src/aws/args.dart';
export 'src/aws/function.dart';
export 'src/build/args.dart';
export 'src/build/archive.dart';
export 'src/build/target.dart';
export 'src/gcp/args.dart';
export 'src/gcp/function.dart';
export 'src/models.dart';
