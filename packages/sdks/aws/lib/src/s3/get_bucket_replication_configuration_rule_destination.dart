// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_access_control_translation.dart';
import 'get_bucket_replication_configuration_rule_destination_encryption_configuration.dart';
import 'get_bucket_replication_configuration_rule_destination_metric.dart';
import 'get_bucket_replication_configuration_rule_destination_replication_time.dart';

class GetBucketReplicationConfigurationRuleDestination {
  /// Configuration block that specifies the overrides to use for object owners on replication. See `accessControlTranslation` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>> accessControlTranslations;
  /// Account ID used to specify the replica ownership.
  final pulumi.Input<String> account;
  /// Name of the bucket to get the replication configuration for.
  final pulumi.Input<String> bucket;
  /// Configuration block that provides information about encryption. See `encryptionConfiguration` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>> encryptionConfigurations;
  /// Configuration block that specifies replication metrics-related settings. See `metrics` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationMetric>> metrics;
  /// Configuration block that specifies S3 Replication Time Control (S3 RTC). See `replicationTime` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationReplicationTime>> replicationTimes;
  /// Storage class used to store the object.
  final pulumi.Input<String> storageClass;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestination].
  /// [accessControlTranslations] Configuration block that specifies the overrides to use for object owners on replication. See `accessControlTranslation` Block below.
  /// [account] Account ID used to specify the replica ownership.
  /// [bucket] Name of the bucket to get the replication configuration for.
  /// [encryptionConfigurations] Configuration block that provides information about encryption. See `encryptionConfiguration` Block below.
  /// [metrics] Configuration block that specifies replication metrics-related settings. See `metrics` Block below.
  /// [replicationTimes] Configuration block that specifies S3 Replication Time Control (S3 RTC). See `replicationTime` Block below.
  /// [storageClass] Storage class used to store the object.
  const GetBucketReplicationConfigurationRuleDestination({
    required this.accessControlTranslations,
    required this.account,
    required this.bucket,
    required this.encryptionConfigurations,
    required this.metrics,
    required this.replicationTimes,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslations': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>, List<Map<String, dynamic>>>(accessControlTranslations, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'account': account,
      'bucket': bucket,
      'encryptionConfigurations': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metrics': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicationTimes': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestinationReplicationTime>, List<Map<String, dynamic>>>(replicationTimes, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestinationReplicationTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageClass': storageClass,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestination.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestination(
      accessControlTranslations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>(map['accessControlTranslations']!, (value) => GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap((value as Map).cast<String, dynamic>()))),
      account: pulumi.Input.fromValue(map['account'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      encryptionConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>(map['encryptionConfigurations']!, (value) => GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationMetric>(map['metrics']!, (value) => GetBucketReplicationConfigurationRuleDestinationMetric.fromMap((value as Map).cast<String, dynamic>()))),
      replicationTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationReplicationTime>(map['replicationTimes']!, (value) => GetBucketReplicationConfigurationRuleDestinationReplicationTime.fromMap((value as Map).cast<String, dynamic>()))),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
