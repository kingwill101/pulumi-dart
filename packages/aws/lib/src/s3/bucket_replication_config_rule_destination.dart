// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_destination_access_control_translation.dart';
import 'bucket_replication_config_rule_destination_encryption_configuration.dart';
import 'bucket_replication_config_rule_destination_metrics.dart';
import 'bucket_replication_config_rule_destination_replication_time.dart';

class BucketReplicationConfigRuleDestination {
  /// Configuration block that specifies the overrides to use for object owners on replication. See below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with `account` owner override configuration.
  final BucketReplicationConfigRuleDestinationAccessControlTranslation? accessControlTranslation;
  /// Account ID to specify the replica ownership. Must be used in conjunction with `access_control_translation` override configuration.
  final String? account;
  /// ARN of the bucket where you want Amazon S3 to store the results.
  final String bucket;
  /// Configuration block that provides information about encryption. See below. If `source_selection_criteria` is specified, you must specify this element.
  final BucketReplicationConfigRuleDestinationEncryptionConfiguration? encryptionConfiguration;
  /// Configuration block that specifies replication metrics-related settings enabling replication metrics and events. See below.
  final BucketReplicationConfigRuleDestinationMetrics? metrics;
  /// Configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. See below. Replication Time Control must be used in conjunction with `metrics`.
  final BucketReplicationConfigRuleDestinationReplicationTime? replicationTime;
  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final String? storageClass;

  /// Creates a new [BucketReplicationConfigRuleDestination].
  /// [accessControlTranslation] Configuration block that specifies the overrides to use for object owners on replication. See below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with `account` owner override configuration.
  /// [account] Account ID to specify the replica ownership. Must be used in conjunction with `access_control_translation` override configuration.
  /// [bucket] ARN of the bucket where you want Amazon S3 to store the results.
  /// [encryptionConfiguration] Configuration block that provides information about encryption. See below. If `source_selection_criteria` is specified, you must specify this element.
  /// [metrics] Configuration block that specifies replication metrics-related settings enabling replication metrics and events. See below.
  /// [replicationTime] Configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. See below. Replication Time Control must be used in conjunction with `metrics`.
  /// [storageClass] The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  BucketReplicationConfigRuleDestination({
    this.accessControlTranslation,
    this.account,
    required this.bucket,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslation': ?accessControlTranslation == null ? null : accessControlTranslation!.toMap(),
      'account': ?account,
      'bucket': bucket,
      'encryptionConfiguration': ?encryptionConfiguration == null ? null : encryptionConfiguration!.toMap(),
      'metrics': ?metrics == null ? null : metrics!.toMap(),
      'replicationTime': ?replicationTime == null ? null : replicationTime!.toMap(),
      'storageClass': ?storageClass,
    };
  }

  factory BucketReplicationConfigRuleDestination.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestination(
      accessControlTranslation: map['accessControlTranslation'] == null ? null : BucketReplicationConfigRuleDestinationAccessControlTranslation.fromMap((map['accessControlTranslation'] as Map).cast<String, dynamic>()),
      account: map['account'] == null ? null : map['account'] as String,
      bucket: map['bucket'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : BucketReplicationConfigRuleDestinationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      metrics: map['metrics'] == null ? null : BucketReplicationConfigRuleDestinationMetrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      replicationTime: map['replicationTime'] == null ? null : BucketReplicationConfigRuleDestinationReplicationTime.fromMap((map['replicationTime'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}

