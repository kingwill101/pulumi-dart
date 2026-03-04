// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_configuration_rule_destination_access_control_translation.dart';
import 'bucket_replication_configuration_rule_destination_metrics.dart';
import 'bucket_replication_configuration_rule_destination_replication_time.dart';

class BucketReplicationConfigurationRuleDestination {
  /// Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  final pulumi.Input<
    BucketReplicationConfigurationRuleDestinationAccessControlTranslation
  >?
  accessControlTranslation;

  /// Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  final pulumi.Input<String>? accountId;

  /// ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  final pulumi.Input<String> bucket;

  /// Enables replication metrics (required for S3 RTC) (documented below).
  final pulumi.Input<BucketReplicationConfigurationRuleDestinationMetrics>?
  metrics;

  /// Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// `sse_kms_encrypted_objects` source selection criteria.
  final pulumi.Input<String>? replicaKmsKeyId;

  /// Enables S3 Replication Time Control (S3 RTC) (documented below).
  final pulumi.Input<
    BucketReplicationConfigurationRuleDestinationReplicationTime
  >?
  replicationTime;

  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final pulumi.Input<String>? storageClass;

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
      'accessControlTranslation':
          ?pulumi.Input.mapOptionalInputValue<
            BucketReplicationConfigurationRuleDestinationAccessControlTranslation,
            Map<String, dynamic>
          >(accessControlTranslation, (value) => value.toMap()),
      'accountId': ?accountId,
      'bucket': bucket,
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            BucketReplicationConfigurationRuleDestinationMetrics,
            Map<String, dynamic>
          >(metrics, (value) => value.toMap()),
      'replicaKmsKeyId': ?replicaKmsKeyId,
      'replicationTime':
          ?pulumi.Input.mapOptionalInputValue<
            BucketReplicationConfigurationRuleDestinationReplicationTime,
            Map<String, dynamic>
          >(replicationTime, (value) => value.toMap()),
      'storageClass': ?storageClass,
    };
  }

  factory BucketReplicationConfigurationRuleDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigurationRuleDestination(
      accessControlTranslation: (() {
        final guardedValue = map['accessControlTranslation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketReplicationConfigurationRuleDestinationMetrics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicaKmsKeyId: (() {
        final guardedValue = map['replicaKmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationTime: (() {
        final guardedValue = map['replicationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketReplicationConfigurationRuleDestinationReplicationTime.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageClass: (() {
        final guardedValue = map['storageClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
