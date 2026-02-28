// ignore_for_file: unused_element, unnecessary_cast


class GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration {
  final String replicaKmsKeyId;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration].
  /// [replicaKmsKeyId] Required.
  GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaKmsKeyId': replicaKmsKeyId,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration(
      replicaKmsKeyId: map['replicaKmsKeyId'] as String,
    );
  }
}

