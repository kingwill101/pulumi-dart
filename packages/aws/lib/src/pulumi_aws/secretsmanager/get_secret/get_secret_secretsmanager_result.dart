// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecret.
class GetSecretSecretsmanagerResult {
  /// ARN of the secret.
  final String arn;

  /// Created date of the secret in UTC.
  final String createdDate;

  /// Description of the secret.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Key Management Service (KMS) Customer Master Key (CMK) associated with the secret.
  final String kmsKeyId;

  /// Last updated date of the secret in UTC.
  final String lastChangedDate;
  final String name;

  /// Resource-based policy document that's attached to the secret.
  final String policy;
  final String region;

  /// Tags of the secret.
  final Map<String, String> tags;

  GetSecretSecretsmanagerResult({
    required this.arn,
    required this.createdDate,
    required this.description,
    required this.id,
    required this.kmsKeyId,
    required this.lastChangedDate,
    required this.name,
    required this.policy,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['lastChangedDate'] = lastChangedDate;
    map['name'] = name;
    map['policy'] = policy;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetSecretSecretsmanagerResult.fromMap(Map<String, dynamic> map) {
    return GetSecretSecretsmanagerResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      lastChangedDate: map['lastChangedDate'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
