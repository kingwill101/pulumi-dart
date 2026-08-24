import 'package:pulumi/pulumi.dart' as pulumi;

/// A deployable Dart function source.
///
/// Use one of the named factories so invalid source combinations cannot be
/// represented.
sealed class DartFunctionSource {
  const DartFunctionSource();

  /// Builds and deploys a container image from [context].
  factory DartFunctionSource.image({
    required pulumi.Input<String> context,
    pulumi.Input<String>? dockerfile,
    pulumi.Input<String>? platform,
  }) = DartFunctionImageSource;

  /// Deploys a Pulumi archive, including local and remote archives.
  ///
  /// A [pulumi.RemoteArchive] can refer to a signed HTTPS URL from R2, MinIO,
  /// B2, or another S3-compatible object store. Provider adapters stage the
  /// archive into the cloud-native storage required by the target runtime.
  factory DartFunctionSource.archive({
    required pulumi.Input<dynamic> archive,
    pulumi.Input<String>? baseImageUri,
    pulumi.Input<String>? command,
    pulumi.Input<String>? bucketName,
    pulumi.Input<String>? objectName,
  }) = DartFunctionArchiveSource;

  /// Deploys an existing AWS S3 object directly to AWS Lambda.
  ///
  /// Lambda's deployment API requires AWS S3 here. For R2 and other
  /// S3-compatible services, use [DartFunctionSource.archive] with a signed
  /// remote archive URL instead.
  factory DartFunctionSource.awsS3({
    required pulumi.Input<String> bucket,
    required pulumi.Input<String> key,
    pulumi.Input<String>? objectVersion,
    pulumi.Input<String>? sourceCodeHash,
    pulumi.Input<String>? runtime,
    pulumi.Input<String>? handler,
  }) = AwsLambdaS3Source;
}

/// A container-image function source.
final class DartFunctionImageSource extends DartFunctionSource {
  final pulumi.Input<String> context;
  final pulumi.Input<String>? dockerfile;
  final pulumi.Input<String>? platform;

  const DartFunctionImageSource({
    required this.context,
    this.dockerfile,
    this.platform,
  });
}

/// A provider-neutral archive source.
final class DartFunctionArchiveSource extends DartFunctionSource {
  final pulumi.Input<dynamic> archive;
  final pulumi.Input<String>? baseImageUri;
  final pulumi.Input<String>? command;
  final pulumi.Input<String>? bucketName;
  final pulumi.Input<String>? objectName;

  const DartFunctionArchiveSource({
    required this.archive,
    this.baseImageUri,
    this.command,
    this.bucketName,
    this.objectName,
  });
}

/// An AWS-S3-native Lambda archive source.
final class AwsLambdaS3Source extends DartFunctionSource {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> key;
  final pulumi.Input<String>? objectVersion;
  final pulumi.Input<String>? sourceCodeHash;
  final pulumi.Input<String>? runtime;
  final pulumi.Input<String>? handler;

  const AwsLambdaS3Source({
    required this.bucket,
    required this.key,
    this.objectVersion,
    this.sourceCodeHash,
    this.runtime,
    this.handler,
  });
}
