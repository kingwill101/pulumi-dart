// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration {
  final pulumi.Input<String> replicaKmsKeyId;

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
      replicaKmsKeyId: pulumi.Input.fromValue(map['replicaKmsKeyId'] as String),
    );
  }
}

