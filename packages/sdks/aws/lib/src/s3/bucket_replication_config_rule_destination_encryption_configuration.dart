// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleDestinationEncryptionConfiguration {
  /// ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.
  final pulumi.Input<String> replicaKmsKeyId;

  /// Creates a new [BucketReplicationConfigRuleDestinationEncryptionConfiguration].
  /// [replicaKmsKeyId] ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.
  const BucketReplicationConfigRuleDestinationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaKmsKeyId': replicaKmsKeyId,
    };
  }

  factory BucketReplicationConfigRuleDestinationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationEncryptionConfiguration(
      replicaKmsKeyId: pulumi.Input.fromValue(map['replicaKmsKeyId'] as String),
    );
  }
}

