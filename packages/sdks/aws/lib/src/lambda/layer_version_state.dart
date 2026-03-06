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
  const LayerVersionState({
    this.arn,
    this.code,
    this.codeSha256,
    this.compatibleArchitectures,
    this.compatibleRuntimes,
    this.createdDate,
    this.description,
    this.layerArn,
    this.layerName,
    this.licenseInfo,
    this.region,
    this.s3Bucket,
    this.s3Key,
    this.s3ObjectVersion,
    this.signingJobArn,
    this.signingProfileVersionArn,
    this.skipDestroy,
    this.sourceCodeHash,
    this.sourceCodeSize,
    this.version,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      codeSha256: (() { final guardedValue = map['codeSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibleArchitectures: (() { final guardedValue = map['compatibleArchitectures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      compatibleRuntimes: (() { final guardedValue = map['compatibleRuntimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerArn: (() { final guardedValue = map['layerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerName: (() { final guardedValue = map['layerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseInfo: (() { final guardedValue = map['licenseInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Bucket: (() { final guardedValue = map['s3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Key: (() { final guardedValue = map['s3Key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3ObjectVersion: (() { final guardedValue = map['s3ObjectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingJobArn: (() { final guardedValue = map['signingJobArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingProfileVersionArn: (() { final guardedValue = map['signingProfileVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceCodeHash: (() { final guardedValue = map['sourceCodeHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCodeSize: (() { final guardedValue = map['sourceCodeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

