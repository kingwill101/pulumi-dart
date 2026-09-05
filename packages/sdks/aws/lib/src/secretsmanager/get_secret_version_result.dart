// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecretVersion.
class GetSecretVersionResult {
  /// (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  final String? arn;
  /// Created date of the secret in UTC.
  final String? createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// ARN of the secret.
  final String? secretArn;
  /// Decrypted part of the protected secret information that was originally provided as a binary.
  final String? secretBinary;
  final String? secretId;
  /// Decrypted part of the protected secret information that was originally provided as a string.
  final String? secretString;
  /// Unique identifier of this version of the secret.
  final String? versionId;
  final String? versionStage;
  /// List of staging labels attached to this version of the secret.
  final List<String>? versionStages;

  /// Creates a new [GetSecretVersionResult].
  /// [arn] (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  /// [createdDate] Created date of the secret in UTC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [secretArn] ARN of the secret.
  /// [secretBinary] Decrypted part of the protected secret information that was originally provided as a binary.
  /// [secretId] Optional.
  /// [secretString] Decrypted part of the protected secret information that was originally provided as a string.
  /// [versionId] Unique identifier of this version of the secret.
  /// [versionStage] Optional.
  /// [versionStages] List of staging labels attached to this version of the secret.
  const GetSecretVersionResult({
    this.arn,
    this.createdDate,
    this.id,
    this.region,
    this.secretArn,
    this.secretBinary,
    this.secretId,
    this.secretString,
    this.versionId,
    this.versionStage,
    this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'id': ?id,
      'region': ?region,
      'secretArn': ?secretArn,
      'secretBinary': ?secretBinary,
      'secretId': ?secretId,
      'secretString': ?secretString,
      'versionId': ?versionId,
      'versionStage': ?versionStage,
      'versionStages': ?versionStages,
    };
  }

  factory GetSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretBinary: (() { final guardedValue = map['secretBinary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretString: (() { final guardedValue = map['secretString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionStage: (() { final guardedValue = map['versionStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionStages: (() { final guardedValue = map['versionStages']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
