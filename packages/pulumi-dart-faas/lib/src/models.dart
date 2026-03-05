import 'package:pulumi/pulumi.dart' as pulumi;

/// Container-image source for a Dart function.
class DartFunctionSourceImageArgs {
  /// Build context directory passed to the provider-specific image builder.
  final pulumi.Input<String> context;

  /// Optional Dockerfile path relative to [context].
  final pulumi.Input<String>? dockerfile;

  /// Optional target platform such as `linux/amd64` or `linux/arm64`.
  final pulumi.Input<String>? platform;

  const DartFunctionSourceImageArgs({
    required this.context,
    this.dockerfile,
    this.platform,
  });
}

/// S3 zip source for a Dart function.
class DartFunctionSourceZipS3Args {
  /// S3 bucket containing the deployment archive.
  final pulumi.Input<String> bucket;

  /// S3 object key for the deployment archive.
  final pulumi.Input<String> key;

  /// Optional S3 object version for immutable deployments.
  final pulumi.Input<String>? objectVersion;

  /// Optional source hash used by Lambda to detect zip content changes.
  final pulumi.Input<String>? sourceCodeHash;

  /// Optional Lambda runtime override for zip-based deployments.
  ///
  /// Defaults to `provided.al2023` in the AWS adapter.
  final pulumi.Input<String>? runtime;

  /// Optional Lambda handler override for zip-based deployments.
  ///
  /// Defaults to `bootstrap` in the AWS adapter.
  final pulumi.Input<String>? handler;

  const DartFunctionSourceZipS3Args({
    required this.bucket,
    required this.key,
    this.objectVersion,
    this.sourceCodeHash,
    this.runtime,
    this.handler,
  });
}

/// Source bundle upload for Cloud Run source deployment.
class DartFunctionSourceBinaryUploadArgs {
  /// Pulumi archive to upload.
  ///
  /// This is typically `DartBuildArchive.archive`, `pulumi.FileArchive`, or
  /// another archive-valued Pulumi input supported by the provider.
  final pulumi.Input<dynamic> sourceArchive;

  /// Optional base image URI used by Cloud Run source-based deployments.
  final pulumi.Input<String>? baseImageUri;

  /// Optional process command used to start the uploaded binary.
  final pulumi.Input<String>? command;

  /// Optional existing bucket name to reuse for uploaded artifacts.
  final pulumi.Input<String>? bucketName;

  /// Optional object name for the uploaded artifact.
  final pulumi.Input<String>? objectName;

  const DartFunctionSourceBinaryUploadArgs({
    required this.sourceArchive,
    this.baseImageUri,
    this.command,
    this.bucketName,
    this.objectName,
  });
}

/// Function source options.
///
/// Provider adapters should accept only their supported modes and validate with
/// [validateDartFunctionSourceArgs].
class DartFunctionSourceArgs {
  /// Container image source.
  final DartFunctionSourceImageArgs? image;

  /// AWS zip artifact source from S3.
  final DartFunctionSourceZipS3Args? zipS3;

  /// Archive upload source for providers that support uploaded bundles.
  final DartFunctionSourceBinaryUploadArgs? binaryUpload;

  const DartFunctionSourceArgs({this.image, this.zipS3, this.binaryUpload});
}

/// HTTP endpoint settings for a function.
class DartFunctionHttpArgs {
  /// Whether the provider adapter should provision a public HTTP endpoint.
  final bool enabled;

  /// Provider-specific authorization type for the HTTP endpoint.
  ///
  /// The AWS adapter uses this for Lambda Function URLs.
  final pulumi.Input<String>? authorizationType;

  const DartFunctionHttpArgs({this.enabled = true, this.authorizationType});
}

/// Validates that exactly one source mode is selected and supported.
///
/// Each provider adapter is expected to call this before creating resources so
/// users get a deterministic argument error instead of a provider-side failure.
void validateDartFunctionSourceArgs(
  DartFunctionSourceArgs source, {
  required List<String> allowedModes,
}) {
  final selectedModes = <String>[
    if (source.image != null) 'image',
    if (source.zipS3 != null) 'zipS3',
    if (source.binaryUpload != null) 'binaryUpload',
  ];

  if (selectedModes.length != 1) {
    throw ArgumentError(
      'Exactly one source must be provided: '
      'source.image, source.zipS3, or source.binaryUpload.',
    );
  }

  final mode = selectedModes.first;
  if (!allowedModes.contains(mode)) {
    throw ArgumentError(
      'Unsupported source mode "$mode" for this provider. '
      'Supported modes: ${allowedModes.join(', ')}.',
    );
  }
}
