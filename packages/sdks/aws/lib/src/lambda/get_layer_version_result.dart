// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLayerVersion.
class GetLayerVersionResult {
  /// ARN of the Lambda Layer with version.
  final String? arn;
  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String? codeSha256;
  final String? compatibleArchitecture;
  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleArchitectures) the specific Lambda Layer version is compatible with.
  final List<String>? compatibleArchitectures;
  final String? compatibleRuntime;
  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_GetLayerVersion.html#SSS-GetLayerVersion-response-CompatibleRuntimes) the specific Lambda Layer version is compatible with.
  final List<String>? compatibleRuntimes;
  /// Date this resource was created.
  final String? createdDate;
  /// Description of the specific Lambda Layer version.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the Lambda Layer without version.
  final String? layerArn;
  final String? layerName;
  final String? layerVersionArn;
  /// License info associated with the specific Lambda Layer version.
  final String? licenseInfo;
  final String? region;
  /// ARN of a signing job.
  final String? signingJobArn;
  /// ARN for a signing profile version.
  final String? signingProfileVersionArn;
  /// (**Deprecated** use `codeSha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String? sourceCodeHash;
  /// Size in bytes of the function .zip file.
  final int? sourceCodeSize;
  final int? version;

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
  /// [layerName] Optional.
  /// [layerVersionArn] Optional.
  /// [licenseInfo] License info associated with the specific Lambda Layer version.
  /// [region] Optional.
  /// [signingJobArn] ARN of a signing job.
  /// [signingProfileVersionArn] ARN for a signing profile version.
  /// [sourceCodeHash] (**Deprecated** use `codeSha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [version] Optional.
  const GetLayerVersionResult({
    this.arn,
    this.codeSha256,
    this.compatibleArchitecture,
    this.compatibleArchitectures,
    this.compatibleRuntime,
    this.compatibleRuntimes,
    this.createdDate,
    this.description,
    this.id,
    this.layerArn,
    this.layerName,
    this.layerVersionArn,
    this.licenseInfo,
    this.region,
    this.signingJobArn,
    this.signingProfileVersionArn,
    this.sourceCodeHash,
    this.sourceCodeSize,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'codeSha256': ?codeSha256,
      'compatibleArchitecture': ?compatibleArchitecture,
      'compatibleArchitectures': ?compatibleArchitectures,
      'compatibleRuntime': ?compatibleRuntime,
      'compatibleRuntimes': ?compatibleRuntimes,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'layerArn': ?layerArn,
      'layerName': ?layerName,
      'layerVersionArn': ?layerVersionArn,
      'licenseInfo': ?licenseInfo,
      'region': ?region,
      'signingJobArn': ?signingJobArn,
      'signingProfileVersionArn': ?signingProfileVersionArn,
      'sourceCodeHash': ?sourceCodeHash,
      'sourceCodeSize': ?sourceCodeSize,
      'version': ?version,
    };
  }

  factory GetLayerVersionResult.fromMap(Map<String, dynamic> map) {
    return GetLayerVersionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      codeSha256: (() { final guardedValue = map['codeSha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      compatibleArchitecture: (() { final guardedValue = map['compatibleArchitecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      compatibleArchitectures: (() { final guardedValue = map['compatibleArchitectures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      compatibleRuntime: (() { final guardedValue = map['compatibleRuntime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      compatibleRuntimes: (() { final guardedValue = map['compatibleRuntimes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      layerArn: (() { final guardedValue = map['layerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      layerName: (() { final guardedValue = map['layerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      layerVersionArn: (() { final guardedValue = map['layerVersionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseInfo: (() { final guardedValue = map['licenseInfo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingJobArn: (() { final guardedValue = map['signingJobArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingProfileVersionArn: (() { final guardedValue = map['signingProfileVersionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceCodeHash: (() { final guardedValue = map['sourceCodeHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceCodeSize: (() { final guardedValue = map['sourceCodeSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
