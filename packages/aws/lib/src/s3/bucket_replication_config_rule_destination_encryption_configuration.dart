// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDestinationEncryptionConfiguration {
  /// ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.
  final String replicaKmsKeyId;

  /// Creates a new [BucketReplicationConfigRuleDestinationEncryptionConfiguration].
  /// [replicaKmsKeyId] ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.
  BucketReplicationConfigRuleDestinationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicaKmsKeyId'] = replicaKmsKeyId;
    return map;
  }

  factory BucketReplicationConfigRuleDestinationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationEncryptionConfiguration(
      replicaKmsKeyId: map['replicaKmsKeyId'] as String,
    );
  }
}
