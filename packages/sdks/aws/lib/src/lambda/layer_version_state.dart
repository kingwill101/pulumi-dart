// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LayerVersion resources.
class LayerVersionState {
  /// ARN of the Lambda Layer with version.
  final pulumi.Input<String>? arn;
  /// Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  final pulumi.Input<dynamic>? code;
  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  final pulumi.Input<String>? codeSha256;
  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently `x86_64` and `arm64` can be specified.
  final pulumi.Input<List<String>>? compatibleArchitectures;
  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  final pulumi.Input<List<String>>? compatibleRuntimes;
  /// Date this resource was created.
  final pulumi.Input<String>? createdDate;
  /// Description of what your Lambda Layer does.
  final pulumi.Input<String>? description;
  /// ARN of the Lambda Layer without version.
  final pulumi.Input<String>? layerArn;
  /// Unique name for your Lambda Layer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? layerName;
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
  /// ARN of a signing job.
  final pulumi.Input<String>? signingJobArn;
  /// ARN for a signing profile version.
  final pulumi.Input<String>? signingProfileVersionArn;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_architectures`, `compatible_runtimes`, `description`, `filename`, `layer_name`, `license_info`, `s3_bucket`, `s3_key`, `s3_object_version`, or `source_code_hash` forces deletion of the existing layer version and creation of a new layer version.
  final pulumi.Input<bool>? skipDestroy;
  /// Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either `filename` or `s3_key`. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  final pulumi.Input<String>? sourceCodeHash;
  /// Size in bytes of the function .zip file.
  final pulumi.Input<int>? sourceCodeSize;
  /// Lambda Layer version.
  final pulumi.Input<String>? version;

  /// Creates a new [LayerVersionState].
  /// [arn] ARN of the Lambda Layer with version.
  /// [code] Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  /// [codeSha256] Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [compatibleArchitectures] List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently `x86_64` and `arm64` can be specified.
  /// [compatibleRuntimes] List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  /// [createdDate] Date this resource was created.
  /// [description] Description of what your Lambda Layer does.
  /// [layerArn] ARN of the Lambda Layer without version.
  /// [layerName] Unique name for your Lambda Layer.
  /// [licenseInfo] License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Bucket] S3 bucket location containing the function's deployment package. Conflicts with `filename`. This bucket must reside in the same AWS region where you are creating the Lambda function.
  /// [s3Key] S3 key of an object containing the function's deployment package. Conflicts with `filename`.
  /// [s3ObjectVersion] Object version containing the function's deployment package. Conflicts with `filename`.
  /// [signingJobArn] ARN of a signing job.
  /// [signingProfileVersionArn] ARN for a signing profile version.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_architectures`, `compatible_runtimes`, `description`, `filename`, `layer_name`, `license_info`, `s3_bucket`, `s3_key`, `s3_object_version`, or `source_code_hash` forces deletion of the existing layer version and creation of a new layer version.
  /// [sourceCodeHash] Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either `filename` or `s3_key`. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [version] Lambda Layer version.
  LayerVersionState({
    pulumi.Output<String>? arn,
    pulumi.Output<dynamic>? code,
    pulumi.Output<String>? codeSha256,
    pulumi.Output<List<String>>? compatibleArchitectures,
    pulumi.Output<List<String>>? compatibleRuntimes,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? layerArn,
    pulumi.Output<String>? layerName,
    pulumi.Output<String>? licenseInfo,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3Bucket,
    pulumi.Output<String>? s3Key,
    pulumi.Output<String>? s3ObjectVersion,
    pulumi.Output<String>? signingJobArn,
    pulumi.Output<String>? signingProfileVersionArn,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<String>? sourceCodeHash,
    pulumi.Output<int>? sourceCodeSize,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      code = pulumi.Input.asOptionalInput<dynamic>(code),
      codeSha256 = pulumi.Input.asOptionalInput<String>(codeSha256),
      compatibleArchitectures = pulumi.Input.asOptionalInput<List<String>>(compatibleArchitectures),
      compatibleRuntimes = pulumi.Input.asOptionalInput<List<String>>(compatibleRuntimes),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      layerArn = pulumi.Input.asOptionalInput<String>(layerArn),
      layerName = pulumi.Input.asOptionalInput<String>(layerName),
      licenseInfo = pulumi.Input.asOptionalInput<String>(licenseInfo),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
      s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
      s3ObjectVersion = pulumi.Input.asOptionalInput<String>(s3ObjectVersion),
      signingJobArn = pulumi.Input.asOptionalInput<String>(signingJobArn),
      signingProfileVersionArn = pulumi.Input.asOptionalInput<String>(signingProfileVersionArn),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      sourceCodeHash = pulumi.Input.asOptionalInput<String>(sourceCodeHash),
      sourceCodeSize = pulumi.Input.asOptionalInput<int>(sourceCodeSize),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'code': ?code,
      'codeSha256': ?codeSha256,
      'compatibleArchitectures': ?compatibleArchitectures,
      'compatibleRuntimes': ?compatibleRuntimes,
      'createdDate': ?createdDate,
      'description': ?description,
      'layerArn': ?layerArn,
      'layerName': ?layerName,
      'licenseInfo': ?licenseInfo,
      'region': ?region,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'signingJobArn': ?signingJobArn,
      'signingProfileVersionArn': ?signingProfileVersionArn,
      'skipDestroy': ?skipDestroy,
      'sourceCodeHash': ?sourceCodeHash,
      'sourceCodeSize': ?sourceCodeSize,
      'version': ?version,
    };
  }

  factory LayerVersionState.fromMap(Map<String, dynamic> map) {
    return LayerVersionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      code: map['code'] == null ? null : pulumi.Output.create<dynamic>(map['code']),
      codeSha256: map['codeSha256'] == null ? null : pulumi.Output.create<String>(map['codeSha256'] as String),
      compatibleArchitectures: map['compatibleArchitectures'] == null ? null : pulumi.Output.create<List<String>>((map['compatibleArchitectures'] as List).cast<String>()),
      compatibleRuntimes: map['compatibleRuntimes'] == null ? null : pulumi.Output.create<List<String>>((map['compatibleRuntimes'] as List).cast<String>()),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      layerArn: map['layerArn'] == null ? null : pulumi.Output.create<String>(map['layerArn'] as String),
      layerName: map['layerName'] == null ? null : pulumi.Output.create<String>(map['layerName'] as String),
      licenseInfo: map['licenseInfo'] == null ? null : pulumi.Output.create<String>(map['licenseInfo'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3Bucket: map['s3Bucket'] == null ? null : pulumi.Output.create<String>(map['s3Bucket'] as String),
      s3Key: map['s3Key'] == null ? null : pulumi.Output.create<String>(map['s3Key'] as String),
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : pulumi.Output.create<String>(map['s3ObjectVersion'] as String),
      signingJobArn: map['signingJobArn'] == null ? null : pulumi.Output.create<String>(map['signingJobArn'] as String),
      signingProfileVersionArn: map['signingProfileVersionArn'] == null ? null : pulumi.Output.create<String>(map['signingProfileVersionArn'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      sourceCodeHash: map['sourceCodeHash'] == null ? null : pulumi.Output.create<String>(map['sourceCodeHash'] as String),
      sourceCodeSize: map['sourceCodeSize'] == null ? null : pulumi.Output.create<int>(map['sourceCodeSize'] as int),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

