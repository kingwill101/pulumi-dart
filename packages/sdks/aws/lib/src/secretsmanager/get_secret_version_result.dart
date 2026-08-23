// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecretVersion.
class GetSecretVersionResult {
  /// (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  final String arn;
  /// Created date of the secret in UTC.
  final String createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// ARN of the secret.
  final String secretArn;
  /// Decrypted part of the protected secret information that was originally provided as a binary.
  final String secretBinary;
  final String secretId;
  /// Decrypted part of the protected secret information that was originally provided as a string.
  final String secretString;
  /// Unique identifier of this version of the secret.
  final String versionId;
  final String? versionStage;
  /// List of staging labels attached to this version of the secret.
  final List<String> versionStages;

  /// Creates a new [GetSecretVersionResult].
  /// [arn] (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  /// [createdDate] Created date of the secret in UTC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [secretArn] ARN of the secret.
  /// [secretBinary] Decrypted part of the protected secret information that was originally provided as a binary.
  /// [secretId] Required.
  /// [secretString] Decrypted part of the protected secret information that was originally provided as a string.
  /// [versionId] Unique identifier of this version of the secret.
  /// [versionStage] Optional.
  /// [versionStages] List of staging labels attached to this version of the secret.
  const GetSecretVersionResult({
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.region,
    required this.secretArn,
    required this.secretBinary,
    required this.secretId,
    required this.secretString,
    required this.versionId,
    this.versionStage,
    required this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'id': id,
      'region': region,
      'secretArn': secretArn,
      'secretBinary': secretBinary,
      'secretId': secretId,
      'secretString': secretString,
      'versionId': versionId,
      'versionStage': ?versionStage,
      'versionStages': versionStages,
    };
  }

  factory GetSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      secretArn: map['secretArn'] as String,
      secretBinary: map['secretBinary'] as String,
      secretId: map['secretId'] as String,
      secretString: map['secretString'] as String,
      versionId: map['versionId'] as String,
      versionStage: (() { final guardedValue = map['versionStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionStages: (map['versionStages'] as List).cast<String>(),
    );
  }
}
