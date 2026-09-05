// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecret.
class GetSecretResult {
  /// ARN of the secret.
  final String? arn;
  /// Created date of the secret in UTC.
  final String? createdDate;
  /// Description of the secret.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// KMS Customer Master Key (CMK) associated with the secret.
  final String? kmsKeyId;
  /// Last updated date of the secret in UTC.
  final String? lastChangedDate;
  final String? name;
  /// Resource-based policy document that's attached to the secret.
  final String? policy;
  final String? region;
  /// Tags of the secret.
  final Map<String, String>? tags;
  /// Type of secret for managed external secrets.
  final String? type;

  /// Creates a new [GetSecretResult].
  /// [arn] ARN of the secret.
  /// [createdDate] Created date of the secret in UTC.
  /// [description] Description of the secret.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] KMS Customer Master Key (CMK) associated with the secret.
  /// [lastChangedDate] Last updated date of the secret in UTC.
  /// [name] Optional.
  /// [policy] Resource-based policy document that's attached to the secret.
  /// [region] Optional.
  /// [tags] Tags of the secret.
  /// [type] Type of secret for managed external secrets.
  const GetSecretResult({
    this.arn,
    this.createdDate,
    this.description,
    this.id,
    this.kmsKeyId,
    this.lastChangedDate,
    this.name,
    this.policy,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'lastChangedDate': ?lastChangedDate,
      'name': ?name,
      'policy': ?policy,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastChangedDate: (() { final guardedValue = map['lastChangedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
