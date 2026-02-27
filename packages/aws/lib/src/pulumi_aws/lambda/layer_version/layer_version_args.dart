// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LayerVersion.
class LayerVersionArgs {
  /// Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  final pulumi.Input<dynamic>? code;

  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently `x86_64` and `arm64` can be specified.
  final pulumi.Input<List<String>>? compatibleArchitectures;

  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  final pulumi.Input<List<String>>? compatibleRuntimes;

  /// Description of what your Lambda Layer does.
  final pulumi.Input<String>? description;

  /// Unique name for your Lambda Layer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> layerName;

  /// License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  final pulumi.Input<String>? licenseInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// S3 bucket location containing the function's deployment package. Conflicts with `filename`. This bucket must reside in the same AWS region where you are creating the Lambda function.
  final pulumi.Input<String>? s3Bucket;

  /// S3 key of an object containing the function's deployment package. Conflicts with `filename`.
  final pulumi.Input<String>? s3Key;

  /// Object version containing the function's deployment package. Conflicts with `filename`.
  final pulumi.Input<String>? s3ObjectVersion;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_architectures`, `compatible_runtimes`, `description`, `filename`, `layer_name`, `license_info`, `s3_bucket`, `s3_key`, `s3_object_version`, or `source_code_hash` forces deletion of the existing layer version and creation of a new layer version.
  final pulumi.Input<bool>? skipDestroy;

  /// Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either `filename` or `s3_key`. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  final pulumi.Input<String>? sourceCodeHash;

  LayerVersionArgs({
    this.code,
    this.compatibleArchitectures,
    this.compatibleRuntimes,
    this.description,
    required this.layerName,
    this.licenseInfo,
    this.region,
    this.s3Bucket,
    this.s3Key,
    this.s3ObjectVersion,
    this.skipDestroy,
    this.sourceCodeHash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final compatibleArchitecturesValue = compatibleArchitectures;
    if (compatibleArchitecturesValue != null) {
      map['compatibleArchitectures'] = compatibleArchitecturesValue;
    }
    final compatibleRuntimesValue = compatibleRuntimes;
    if (compatibleRuntimesValue != null) {
      map['compatibleRuntimes'] = compatibleRuntimesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['layerName'] = layerName;
    final licenseInfoValue = licenseInfo;
    if (licenseInfoValue != null) {
      map['licenseInfo'] = licenseInfoValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3BucketValue = s3Bucket;
    if (s3BucketValue != null) {
      map['s3Bucket'] = s3BucketValue;
    }
    final s3KeyValue = s3Key;
    if (s3KeyValue != null) {
      map['s3Key'] = s3KeyValue;
    }
    final s3ObjectVersionValue = s3ObjectVersion;
    if (s3ObjectVersionValue != null) {
      map['s3ObjectVersion'] = s3ObjectVersionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final sourceCodeHashValue = sourceCodeHash;
    if (sourceCodeHashValue != null) {
      map['sourceCodeHash'] = sourceCodeHashValue;
    }
    return map;
  }

  factory LayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return LayerVersionArgs(
      code: pulumi.Input.asOptionalInput<dynamic>(map['code']),
      compatibleArchitectures: pulumi.Input.asOptionalInput<List<String>>(
          map['compatibleArchitectures']),
      compatibleRuntimes:
          pulumi.Input.asOptionalInput<List<String>>(map['compatibleRuntimes']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      layerName: pulumi.Input.asInput<String>(map['layerName']),
      licenseInfo: pulumi.Input.asOptionalInput<String>(map['licenseInfo']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3Bucket: pulumi.Input.asOptionalInput<String>(map['s3Bucket']),
      s3Key: pulumi.Input.asOptionalInput<String>(map['s3Key']),
      s3ObjectVersion:
          pulumi.Input.asOptionalInput<String>(map['s3ObjectVersion']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      sourceCodeHash:
          pulumi.Input.asOptionalInput<String>(map['sourceCodeHash']),
    );
  }
}
