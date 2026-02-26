// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecretVersion.
class GetSecretVersionResult {
  /// ARN of the secret.
  final String arn;

  /// Created date of the secret in UTC.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Decrypted part of the protected secret information that was originally provided as a binary.
  final String secretBinary;
  final String secretId;

  /// Decrypted part of the protected secret information that was originally provided as a string.
  final String secretString;

  /// Unique identifier of this version of the secret.
  final String versionId;
  final String? versionStage;
  final List<String> versionStages;

  GetSecretVersionResult({
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.region,
    required this.secretBinary,
    required this.secretId,
    required this.secretString,
    required this.versionId,
    this.versionStage,
    required this.versionStages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['id'] = id;
    map['region'] = region;
    map['secretBinary'] = secretBinary;
    map['secretId'] = secretId;
    map['secretString'] = secretString;
    map['versionId'] = versionId;
    final versionStageValue = versionStage;
    if (versionStageValue != null) {
      map['versionStage'] = versionStageValue;
    }
    map['versionStages'] = versionStages;
    return map;
  }

  factory GetSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      secretBinary: map['secretBinary'] as String,
      secretId: map['secretId'] as String,
      secretString: map['secretString'] as String,
      versionId: map['versionId'] as String,
      versionStage:
          map['versionStage'] == null ? null : map['versionStage'] as String,
      versionStages: (map['versionStages'] as List).cast<String>(),
    );
  }
}
