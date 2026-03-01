// ignore_for_file: unused_element, unnecessary_cast


class SecretReplica {
  /// ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (`aws/secretsmanager`) in the region or creates one for use if non-existent.
  final String? kmsKeyId;
  /// Date that you last accessed the secret in the Region.
  final String? lastAccessedDate;
  /// Region for replicating the secret.
  final String region;
  /// Status can be `InProgress`, `Failed`, or `InSync`.
  final String? status;
  /// Message such as `Replication succeeded` or `Secret with this name already exists in this region`.
  final String? statusMessage;

  /// Creates a new [SecretReplica].
  /// [kmsKeyId] ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (`aws/secretsmanager`) in the region or creates one for use if non-existent.
  /// [lastAccessedDate] Date that you last accessed the secret in the Region.
  /// [region] Region for replicating the secret.
  /// [status] Status can be `InProgress`, `Failed`, or `InSync`.
  /// [statusMessage] Message such as `Replication succeeded` or `Secret with this name already exists in this region`.
  SecretReplica({
    this.kmsKeyId,
    this.lastAccessedDate,
    required this.region,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'lastAccessedDate': ?lastAccessedDate,
      'region': region,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory SecretReplica.fromMap(Map<String, dynamic> map) {
    return SecretReplica(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      lastAccessedDate: map['lastAccessedDate'] == null ? null : map['lastAccessedDate'] as String,
      region: map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      statusMessage: map['statusMessage'] == null ? null : map['statusMessage'] as String,
    );
  }
}

