// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReplicaRegion
class ReplicaRegion {
  /// The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses ``aws/secretsmanager``.
  final String? kmsKeyId;
  /// A string that represents a ``Region``, for example 'us-east-1'.
  final String? region;

  /// Creates a new [ReplicaRegion].
  /// [kmsKeyId] The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses ``aws/secretsmanager``.
  /// [region] A string that represents a ``Region``, for example 'us-east-1'.
  ReplicaRegion({
    this.kmsKeyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
    };
  }

  factory ReplicaRegion.fromMap(Map<String, dynamic> map) {
    return ReplicaRegion(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

