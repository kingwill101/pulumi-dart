// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LayerVersion.
class LayerVersionArgs {
  /// Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  final Input<dynamic>? code;

  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span> and <span pulumi-lang-nodejs="`arm64`" pulumi-lang-dotnet="`Arm64`" pulumi-lang-go="`arm64`" pulumi-lang-python="`arm64`" pulumi-lang-yaml="`arm64`" pulumi-lang-java="`arm64`">`arm64`</span> can be specified.
  final Input<List<String>>? compatibleArchitectures;

  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  final Input<List<String>>? compatibleRuntimes;

  /// Description of what your Lambda Layer does.
  final Input<String>? description;

  /// Unique name for your Lambda Layer.
  ///
  /// The following arguments are optional:
  final Input<String> layerName;

  /// License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  final Input<String>? licenseInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// S3 bucket location containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>. This bucket must reside in the same AWS region where you are creating the Lambda function.
  final Input<String>? s3Bucket;

  /// S3 key of an object containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  final Input<String>? s3Key;

  /// Object version containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  final Input<String>? s3ObjectVersion;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When this is not set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, changing any of <span pulumi-lang-nodejs="`compatibleArchitectures`" pulumi-lang-dotnet="`CompatibleArchitectures`" pulumi-lang-go="`compatibleArchitectures`" pulumi-lang-python="`compatible_architectures`" pulumi-lang-yaml="`compatibleArchitectures`" pulumi-lang-java="`compatibleArchitectures`">`compatible_architectures`</span>, <span pulumi-lang-nodejs="`compatibleRuntimes`" pulumi-lang-dotnet="`CompatibleRuntimes`" pulumi-lang-go="`compatibleRuntimes`" pulumi-lang-python="`compatible_runtimes`" pulumi-lang-yaml="`compatibleRuntimes`" pulumi-lang-java="`compatibleRuntimes`">`compatible_runtimes`</span>, <span pulumi-lang-nodejs="`description`" pulumi-lang-dotnet="`Description`" pulumi-lang-go="`description`" pulumi-lang-python="`description`" pulumi-lang-yaml="`description`" pulumi-lang-java="`description`">`description`</span>, <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>, <span pulumi-lang-nodejs="`layerName`" pulumi-lang-dotnet="`LayerName`" pulumi-lang-go="`layerName`" pulumi-lang-python="`layer_name`" pulumi-lang-yaml="`layerName`" pulumi-lang-java="`layerName`">`layer_name`</span>, <span pulumi-lang-nodejs="`licenseInfo`" pulumi-lang-dotnet="`LicenseInfo`" pulumi-lang-go="`licenseInfo`" pulumi-lang-python="`license_info`" pulumi-lang-yaml="`licenseInfo`" pulumi-lang-java="`licenseInfo`">`license_info`</span>, <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>, <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>, <span pulumi-lang-nodejs="`s3ObjectVersion`" pulumi-lang-dotnet="`S3ObjectVersion`" pulumi-lang-go="`s3ObjectVersion`" pulumi-lang-python="`s3_object_version`" pulumi-lang-yaml="`s3ObjectVersion`" pulumi-lang-java="`s3ObjectVersion`">`s3_object_version`</span>, or <span pulumi-lang-nodejs="`sourceCodeHash`" pulumi-lang-dotnet="`SourceCodeHash`" pulumi-lang-go="`sourceCodeHash`" pulumi-lang-python="`source_code_hash`" pulumi-lang-yaml="`sourceCodeHash`" pulumi-lang-java="`sourceCodeHash`">`source_code_hash`</span> forces deletion of the existing layer version and creation of a new layer version.
  final Input<bool>? skipDestroy;

  /// Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> or <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  final Input<String>? sourceCodeHash;

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
      code: Input.asOptionalInput<dynamic>(map['code']),
      compatibleArchitectures:
          Input.asOptionalInput<List<String>>(map['compatibleArchitectures']),
      compatibleRuntimes:
          Input.asOptionalInput<List<String>>(map['compatibleRuntimes']),
      description: Input.asOptionalInput<String>(map['description']),
      layerName: Input.asInput<String>(map['layerName']),
      licenseInfo: Input.asOptionalInput<String>(map['licenseInfo']),
      region: Input.asOptionalInput<String>(map['region']),
      s3Bucket: Input.asOptionalInput<String>(map['s3Bucket']),
      s3Key: Input.asOptionalInput<String>(map['s3Key']),
      s3ObjectVersion: Input.asOptionalInput<String>(map['s3ObjectVersion']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      sourceCodeHash: Input.asOptionalInput<String>(map['sourceCodeHash']),
    );
  }
}
