// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration {
  final String replicaKmsKeyId;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration].
  /// [replicaKmsKeyId] Required.
  GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicaKmsKeyId'] = replicaKmsKeyId;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration(
      replicaKmsKeyId: map['replicaKmsKeyId'] as String,
    );
  }
}
