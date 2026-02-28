// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLayerVersion.
class GetLayerVersionResult {
  /// ARN of the Lambda Layer with version.
  final String arn;

  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String codeSha256;
  final String? compatibleArchitecture;

  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleArchitectures) the specific Lambda Layer version is compatible with.
  final List<String> compatibleArchitectures;
  final String? compatibleRuntime;

  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleRuntimes) the specific Lambda Layer version is compatible with.
  final List<String> compatibleRuntimes;

  /// Date this resource was created.
  final String createdDate;

  /// Description of the specific Lambda Layer version.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the Lambda Layer without version.
  final String layerArn;
  final String layerName;

  /// License info associated with the specific Lambda Layer version.
  final String licenseInfo;
  final String region;

  /// ARN of a signing job.
  final String signingJobArn;

  /// ARN for a signing profile version.
  final String signingProfileVersionArn;

  /// (**Deprecated** use `code_sha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String sourceCodeHash;

  /// Size in bytes of the function .zip file.
  final int sourceCodeSize;

  /// Lambda Layer version.
  final int version;

  /// Creates a new [GetLayerVersionResult].
  /// [arn] ARN of the Lambda Layer with version.
  /// [codeSha256] Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [compatibleArchitecture] Optional.
  /// [compatibleArchitectures] List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleArchitectures) the specific Lambda Layer version is compatible with.
  /// [compatibleRuntime] Optional.
  /// [compatibleRuntimes] List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleRuntimes) the specific Lambda Layer version is compatible with.
  /// [createdDate] Date this resource was created.
  /// [description] Description of the specific Lambda Layer version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [layerArn] ARN of the Lambda Layer without version.
  /// [layerName] Required.
  /// [licenseInfo] License info associated with the specific Lambda Layer version.
  /// [region] Required.
  /// [signingJobArn] ARN of a signing job.
  /// [signingProfileVersionArn] ARN for a signing profile version.
  /// [sourceCodeHash] (**Deprecated** use `code_sha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [version] Lambda Layer version.
  GetLayerVersionResult({
    required this.arn,
    required this.codeSha256,
    this.compatibleArchitecture,
    required this.compatibleArchitectures,
    this.compatibleRuntime,
    required this.compatibleRuntimes,
    required this.createdDate,
    required this.description,
    required this.id,
    required this.layerArn,
    required this.layerName,
    required this.licenseInfo,
    required this.region,
    required this.signingJobArn,
    required this.signingProfileVersionArn,
    required this.sourceCodeHash,
    required this.sourceCodeSize,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['codeSha256'] = codeSha256;
    final compatibleArchitectureValue = compatibleArchitecture;
    if (compatibleArchitectureValue != null) {
      map['compatibleArchitecture'] = compatibleArchitectureValue;
    }
    map['compatibleArchitectures'] = compatibleArchitectures;
    final compatibleRuntimeValue = compatibleRuntime;
    if (compatibleRuntimeValue != null) {
      map['compatibleRuntime'] = compatibleRuntimeValue;
    }
    map['compatibleRuntimes'] = compatibleRuntimes;
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['id'] = id;
    map['layerArn'] = layerArn;
    map['layerName'] = layerName;
    map['licenseInfo'] = licenseInfo;
    map['region'] = region;
    map['signingJobArn'] = signingJobArn;
    map['signingProfileVersionArn'] = signingProfileVersionArn;
    map['sourceCodeHash'] = sourceCodeHash;
    map['sourceCodeSize'] = sourceCodeSize;
    map['version'] = version;
    return map;
  }

  factory GetLayerVersionResult.fromMap(Map<String, dynamic> map) {
    return GetLayerVersionResult(
      arn: map['arn'] as String,
      codeSha256: map['codeSha256'] as String,
      compatibleArchitecture: map['compatibleArchitecture'] == null
          ? null
          : map['compatibleArchitecture'] as String,
      compatibleArchitectures:
          (map['compatibleArchitectures'] as List).cast<String>(),
      compatibleRuntime: map['compatibleRuntime'] == null
          ? null
          : map['compatibleRuntime'] as String,
      compatibleRuntimes: (map['compatibleRuntimes'] as List).cast<String>(),
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      layerArn: map['layerArn'] as String,
      layerName: map['layerName'] as String,
      licenseInfo: map['licenseInfo'] as String,
      region: map['region'] as String,
      signingJobArn: map['signingJobArn'] as String,
      signingProfileVersionArn: map['signingProfileVersionArn'] as String,
      sourceCodeHash: map['sourceCodeHash'] as String,
      sourceCodeSize: map['sourceCodeSize'] as int,
      version: map['version'] as int,
    );
  }
}
