// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule_destination_access_control_translation.dart';
import 'bucket_replication_config_rule_destination_encryption_configuration.dart';
import 'bucket_replication_config_rule_destination_metrics.dart';
import 'bucket_replication_config_rule_destination_replication_time.dart';

class BucketReplicationConfigRuleDestination {
  /// Configuration block that specifies the overrides to use for object owners on replication. See below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with `account` owner override configuration.
  final pulumi.Input<BucketReplicationConfigRuleDestinationAccessControlTranslation>? accessControlTranslation;
  /// Account ID to specify the replica ownership. Must be used in conjunction with `accessControlTranslation` override configuration.
  final pulumi.Input<String>? account;
  /// ARN of the bucket where you want Amazon S3 to store the results.
  final pulumi.Input<String> bucket;
  /// Configuration block that provides information about encryption. See below. If `sourceSelectionCriteria` is specified, you must specify this element.
  final pulumi.Input<BucketReplicationConfigRuleDestinationEncryptionConfiguration>? encryptionConfiguration;
  /// Configuration block that specifies replication metrics-related settings enabling replication metrics and events. See below.
  final pulumi.Input<BucketReplicationConfigRuleDestinationMetrics>? metrics;
  /// Configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. See below. Replication Time Control must be used in conjunction with `metrics`.
  final pulumi.Input<BucketReplicationConfigRuleDestinationReplicationTime>? replicationTime;
  /// [Storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [BucketReplicationConfigRuleDestination].
  /// [accessControlTranslation] Configuration block that specifies the overrides to use for object owners on replication. See below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with `account` owner override configuration.
  /// [account] Account ID to specify the replica ownership. Must be used in conjunction with `accessControlTranslation` override configuration.
  /// [bucket] ARN of the bucket where you want Amazon S3 to store the results.
  /// [encryptionConfiguration] Configuration block that provides information about encryption. See below. If `sourceSelectionCriteria` is specified, you must specify this element.
  /// [metrics] Configuration block that specifies replication metrics-related settings enabling replication metrics and events. See below.
  /// [replicationTime] Configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. See below. Replication Time Control must be used in conjunction with `metrics`.
  /// [storageClass] [Storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  const BucketReplicationConfigRuleDestination({
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
      'accessControlTranslation': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleDestinationAccessControlTranslation, Map<String, dynamic>>(accessControlTranslation, (value) => value.toMap()),
      'account': ?account,
      'bucket': bucket,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleDestinationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleDestinationMetrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'replicationTime': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleDestinationReplicationTime, Map<String, dynamic>>(replicationTime, (value) => value.toMap()),
      'storageClass': ?storageClass,
    };
  }

  factory BucketReplicationConfigRuleDestination.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestination(
      accessControlTranslation: (() { final guardedValue = map['accessControlTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleDestinationAccessControlTranslation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleDestinationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleDestinationMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicationTime: (() { final guardedValue = map['replicationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleDestinationReplicationTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
