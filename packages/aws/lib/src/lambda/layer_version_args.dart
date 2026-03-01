// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_layer_version_layer_version_args_doc}
/// The set of arguments for LayerVersion.
/// {@endtemplate}
/// {@macro pulumi_lambda_layer_version_layer_version_args_doc}
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

  /// Creates a new [LayerVersionArgs].
  /// [code] Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  /// [compatibleArchitectures] List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently `x86_64` and `arm64` can be specified.
  /// [compatibleRuntimes] List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  /// [description] Description of what your Lambda Layer does.
  /// [layerName] Unique name for your Lambda Layer.
  /// [licenseInfo] License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Bucket] S3 bucket location containing the function's deployment package. Conflicts with `filename`. This bucket must reside in the same AWS region where you are creating the Lambda function.
  /// [s3Key] S3 key of an object containing the function's deployment package. Conflicts with `filename`.
  /// [s3ObjectVersion] Object version containing the function's deployment package. Conflicts with `filename`.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_architectures`, `compatible_runtimes`, `description`, `filename`, `layer_name`, `license_info`, `s3_bucket`, `s3_key`, `s3_object_version`, or `source_code_hash` forces deletion of the existing layer version and creation of a new layer version.
  /// [sourceCodeHash] Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either `filename` or `s3_key`. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  LayerVersionArgs({
    dynamic code,
    List<String>? compatibleArchitectures,
    List<String>? compatibleRuntimes,
    String? description,
    required String layerName,
    String? licenseInfo,
    String? region,
    String? s3Bucket,
    String? s3Key,
    String? s3ObjectVersion,
    bool? skipDestroy,
    String? sourceCodeHash,
  }) : code = pulumi.Input.asOptionalInput<dynamic>(code),
       compatibleArchitectures = pulumi.Input.asOptionalInput<List<String>>(
         compatibleArchitectures,
       ),
       compatibleRuntimes = pulumi.Input.asOptionalInput<List<String>>(
         compatibleRuntimes,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       layerName = pulumi.Input.asInput<String>(layerName),
       licenseInfo = pulumi.Input.asOptionalInput<String>(licenseInfo),
       region = pulumi.Input.asOptionalInput<String>(region),
       s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
       s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
       s3ObjectVersion = pulumi.Input.asOptionalInput<String>(s3ObjectVersion),
       skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
       sourceCodeHash = pulumi.Input.asOptionalInput<String>(sourceCodeHash);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'compatibleArchitectures': ?compatibleArchitectures,
      'compatibleRuntimes': ?compatibleRuntimes,
      'description': ?description,
      'layerName': layerName,
      'licenseInfo': ?licenseInfo,
      'region': ?region,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'skipDestroy': ?skipDestroy,
      'sourceCodeHash': ?sourceCodeHash,
    };
  }

  factory LayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return LayerVersionArgs(
      code: map['code'] == null ? null : map['code'],
      compatibleArchitectures: map['compatibleArchitectures'] == null
          ? null
          : (map['compatibleArchitectures'] as List).cast<String>(),
      compatibleRuntimes: map['compatibleRuntimes'] == null
          ? null
          : (map['compatibleRuntimes'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      layerName: map['layerName'] as String,
      licenseInfo: map['licenseInfo'] == null
          ? null
          : map['licenseInfo'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Bucket: map['s3Bucket'] == null ? null : map['s3Bucket'] as String,
      s3Key: map['s3Key'] == null ? null : map['s3Key'] as String,
      s3ObjectVersion: map['s3ObjectVersion'] == null
          ? null
          : map['s3ObjectVersion'] as String,
      skipDestroy: map['skipDestroy'] == null
          ? null
          : map['skipDestroy'] as bool,
      sourceCodeHash: map['sourceCodeHash'] == null
          ? null
          : map['sourceCodeHash'] as String,
    );
  }
}
