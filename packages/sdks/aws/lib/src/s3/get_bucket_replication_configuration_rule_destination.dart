// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_destination_access_control_translation.dart';
import 'get_bucket_replication_configuration_rule_destination_encryption_configuration.dart';
import 'get_bucket_replication_configuration_rule_destination_metric.dart';
import 'get_bucket_replication_configuration_rule_destination_replication_time.dart';

class GetBucketReplicationConfigurationRuleDestination {
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>> accessControlTranslations;
  final pulumi.Input<String> account;
  /// The name of the bucket to get the replication configuration for.
  final pulumi.Input<String> bucket;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>> encryptionConfigurations;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationMetric>> metrics;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestinationReplicationTime>> replicationTimes;
  final pulumi.Input<String> storageClass;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestination].
  /// [accessControlTranslations] Required.
  /// [account] Required.
  /// [bucket] The name of the bucket to get the replication configuration for.
  /// [encryptionConfigurations] Required.
  /// [metrics] Required.
  /// [replicationTimes] Required.
  /// [storageClass] Required.
  GetBucketReplicationConfigurationRuleDestination({
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
      accessControlTranslations: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>(map['accessControlTranslations'], (value) => GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      account: (map['account'] as String).input(),
      bucket: (map['bucket'] as String).input(),
      encryptionConfigurations: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>(map['encryptionConfigurations'], (value) => GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metrics: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationMetric>(map['metrics'], (value) => GetBucketReplicationConfigurationRuleDestinationMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicationTimes: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestinationReplicationTime>(map['replicationTimes'], (value) => GetBucketReplicationConfigurationRuleDestinationReplicationTime.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}

