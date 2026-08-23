// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecret.
class GetSecretResult {
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
  /// Type of secret for managed external secrets.
  final String type;

  /// Creates a new [GetSecretResult].
  /// [arn] ARN of the secret.
  /// [createdDate] Created date of the secret in UTC.
  /// [description] Description of the secret.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Key Management Service (KMS) Customer Master Key (CMK) associated with the secret.
  /// [lastChangedDate] Last updated date of the secret in UTC.
  /// [name] Required.
  /// [policy] Resource-based policy document that's attached to the secret.
  /// [region] Required.
  /// [tags] Tags of the secret.
  /// [type] Type of secret for managed external secrets.
  const GetSecretResult({
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
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'description': description,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'lastChangedDate': lastChangedDate,
      'name': name,
      'policy': policy,
      'region': region,
      'tags': tags,
      'type': type,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
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
      type: map['type'] as String,
    );
  }
}
