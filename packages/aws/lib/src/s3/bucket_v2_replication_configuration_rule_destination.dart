// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule_destination_access_control_translation.dart';
import 'bucket_v2_replication_configuration_rule_destination_metric.dart';
import 'bucket_v2_replication_configuration_rule_destination_replication_time.dart';

class BucketV2ReplicationConfigurationRuleDestination {
  /// Specifies the overrides to use for object owners on replication (documented below). Must be used in conjunction with `account_id` owner override configuration.
  final List<
          BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation>?
      accessControlTranslations;

  /// Account ID to use for overriding the object owner on replication. Must be used in conjunction with `access_control_translation` override configuration.
  final String? accountId;

  /// ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule.
  final String bucket;

  /// Enables replication metrics (required for S3 RTC) (documented below).
  final List<BucketV2ReplicationConfigurationRuleDestinationMetric>? metrics;

  /// Destination KMS encryption key ARN for SSE-KMS replication. Must be used in conjunction with
  /// `sse_kms_encrypted_objects` source selection criteria.
  final String? replicaKmsKeyId;

  /// Enables S3 Replication Time Control (S3 RTC) (documented below).
  final List<BucketV2ReplicationConfigurationRuleDestinationReplicationTime>?
      replicationTimes;

  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final String? storageClass;

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
    final map = <String, dynamic>{};
    final accessControlTranslationsValue = accessControlTranslations;
    if (accessControlTranslationsValue != null) {
      map['accessControlTranslations'] = pulumi.Input.encodeList<
          BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation,
          Map<String,
              dynamic>>(accessControlTranslationsValue, (value) => value.toMap());
    }
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['bucket'] = bucket;
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = pulumi.Input.encodeList<
          BucketV2ReplicationConfigurationRuleDestinationMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    final replicaKmsKeyIdValue = replicaKmsKeyId;
    if (replicaKmsKeyIdValue != null) {
      map['replicaKmsKeyId'] = replicaKmsKeyIdValue;
    }
    final replicationTimesValue = replicationTimes;
    if (replicationTimesValue != null) {
      map['replicationTimes'] = pulumi.Input.encodeList<
              BucketV2ReplicationConfigurationRuleDestinationReplicationTime,
              Map<String, dynamic>>(
          replicationTimesValue, (value) => value.toMap());
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    return map;
  }

  factory BucketV2ReplicationConfigurationRuleDestination.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleDestination(
      accessControlTranslations: map['accessControlTranslations'] == null
          ? null
          : pulumi.Input.decodeList<
                  BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation>(
              map['accessControlTranslations'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleDestinationAccessControlTranslation
                      .fromMap((value as Map).cast<String, dynamic>())),
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucket: map['bucket'] as String,
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<
                  BucketV2ReplicationConfigurationRuleDestinationMetric>(
              map['metrics'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleDestinationMetric.fromMap(
                      (value as Map).cast<String, dynamic>())),
      replicaKmsKeyId: map['replicaKmsKeyId'] == null
          ? null
          : map['replicaKmsKeyId'] as String,
      replicationTimes: map['replicationTimes'] == null
          ? null
          : pulumi.Input.decodeList<
                  BucketV2ReplicationConfigurationRuleDestinationReplicationTime>(
              map['replicationTimes'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleDestinationReplicationTime
                      .fromMap((value as Map).cast<String, dynamic>())),
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}
