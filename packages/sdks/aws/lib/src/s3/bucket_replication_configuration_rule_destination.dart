// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_configuration_rule_destination_access_control_translation.dart';
import 'bucket_replication_configuration_rule_destination_metrics.dart';
import 'bucket_replication_configuration_rule_destination_replication_time.dart';

class BucketReplicationConfigurationRuleDestination {
  /// Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  final BucketReplicationConfigurationRuleDestinationAccessControlTranslation? accessControlTranslation;
  /// Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  final String? accountId;
  /// ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  final String bucket;
  /// Enables replication metrics (required for S3 RTC) (documented below).
  final BucketReplicationConfigurationRuleDestinationMetrics? metrics;
  /// Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// `sse_kms_encrypted_objects` source selection criteria.
  final String? replicaKmsKeyId;
  /// Enables S3 Replication Time Control (S3 RTC) (documented below).
  final BucketReplicationConfigurationRuleDestinationReplicationTime? replicationTime;
  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final String? storageClass;

  /// Creates a new [BucketReplicationConfigurationRuleDestination].
  /// [accessControlTranslation] Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  /// [accountId] Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  /// [bucket] ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  /// [metrics] Enables replication metrics (required for S3 RTC) (documented below).
  /// [replicaKmsKeyId] Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// [replicationTime] Enables S3 Replication Time Control (S3 RTC) (documented below).
  /// [storageClass] The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  BucketReplicationConfigurationRuleDestination({
    this.accessControlTranslation,
    this.accountId,
    required this.bucket,
    this.metrics,
    this.replicaKmsKeyId,
    this.replicationTime,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslation': ?accessControlTranslation == null ? null : accessControlTranslation!.toMap(),
      'accountId': ?accountId,
      'bucket': bucket,
      'metrics': ?metrics == null ? null : metrics!.toMap(),
      'replicaKmsKeyId': ?replicaKmsKeyId,
      'replicationTime': ?replicationTime == null ? null : replicationTime!.toMap(),
      'storageClass': ?storageClass,
    };
  }

  factory BucketReplicationConfigurationRuleDestination.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleDestination(
      accessControlTranslation: map['accessControlTranslation'] == null ? null : BucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap((map['accessControlTranslation'] as Map).cast<String, dynamic>()),
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucket: map['bucket'] as String,
      metrics: map['metrics'] == null ? null : BucketReplicationConfigurationRuleDestinationMetrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      replicaKmsKeyId: map['replicaKmsKeyId'] == null ? null : map['replicaKmsKeyId'] as String,
      replicationTime: map['replicationTime'] == null ? null : BucketReplicationConfigurationRuleDestinationReplicationTime.fromMap((map['replicationTime'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}

