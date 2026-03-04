// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule_destination_access_control_translation.dart';
import 'bucket_v2_replication_configuration_rule_destination_metric.dart';
import 'bucket_v2_replication_configuration_rule_destination_replication_time.dart';

class BucketV2ReplicationConfigurationRuleDestination {
  /// Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  final pulumi.Input<
    List<
      BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation
    >
  >?
  accessControlTranslations;

  /// Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  final pulumi.Input<String>? accountId;

  /// ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  final pulumi.Input<String> bucket;

  /// Enables replication metrics (required for S3 RTC) (documented below).
  final pulumi.Input<
    List<BucketV2ReplicationConfigurationRuleDestinationMetric>
  >?
  metrics;

  /// Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// `sse_kms_encrypted_objects` source selection criteria.
  final pulumi.Input<String>? replicaKmsKeyId;

  /// Enables S3 Replication Time Control (S3 RTC) (documented below).
  final pulumi.Input<
    List<BucketV2ReplicationConfigurationRuleDestinationReplicationTime>
  >?
  replicationTimes;

  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [BucketV2ReplicationConfigurationRuleDestination].
  /// [accessControlTranslations] Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  /// [accountId] Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  /// [bucket] ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  /// [metrics] Enables replication metrics (required for S3 RTC) (documented below).
  /// [replicaKmsKeyId] Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// [replicationTimes] Enables S3 Replication Time Control (S3 RTC) (documented below).
  /// [storageClass] The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  BucketV2ReplicationConfigurationRuleDestination({
    this.accessControlTranslations,
    this.accountId,
    required this.bucket,
    this.metrics,
    this.replicaKmsKeyId,
    this.replicationTimes,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslations':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation
            >,
            List<Map<String, dynamic>>
          >(
            accessControlTranslations,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'accountId': ?accountId,
      'bucket': bucket,
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketV2ReplicationConfigurationRuleDestinationMetric>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2ReplicationConfigurationRuleDestinationMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'replicaKmsKeyId': ?replicaKmsKeyId,
      'replicationTimes':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              BucketV2ReplicationConfigurationRuleDestinationReplicationTime
            >,
            List<Map<String, dynamic>>
          >(
            replicationTimes,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2ReplicationConfigurationRuleDestinationReplicationTime,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storageClass': ?storageClass,
    };
  }

  factory BucketV2ReplicationConfigurationRuleDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketV2ReplicationConfigurationRuleDestination(
      accessControlTranslations: (() {
        final guardedValue = map['accessControlTranslations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation
          >(
            guardedValue,
            (value) =>
                BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
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
          pulumi.Input.decodeList<
            BucketV2ReplicationConfigurationRuleDestinationMetric
          >(
            guardedValue,
            (value) =>
                BucketV2ReplicationConfigurationRuleDestinationMetric.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      replicaKmsKeyId: (() {
        final guardedValue = map['replicaKmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationTimes: (() {
        final guardedValue = map['replicationTimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BucketV2ReplicationConfigurationRuleDestinationReplicationTime
          >(
            guardedValue,
            (value) =>
                BucketV2ReplicationConfigurationRuleDestinationReplicationTime.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
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
