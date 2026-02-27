// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bucket_replication_configuration_rule_destination_access_control_translation/get_bucket_replication_configuration_rule_destination_access_control_translation.dart';
import '../get_bucket_replication_configuration_rule_destination_encryption_configuration/get_bucket_replication_configuration_rule_destination_encryption_configuration.dart';
import '../get_bucket_replication_configuration_rule_destination_metric/get_bucket_replication_configuration_rule_destination_metric.dart';
import '../get_bucket_replication_configuration_rule_destination_replication_time/get_bucket_replication_configuration_rule_destination_replication_time.dart';

class GetBucketReplicationConfigurationRuleDestination {
  final List<
          GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>
      accessControlTranslations;
  final String account;

  /// The name of the bucket to get the replication configuration for.
  final String bucket;
  final List<
          GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>
      encryptionConfigurations;
  final List<GetBucketReplicationConfigurationRuleDestinationMetric> metrics;
  final List<GetBucketReplicationConfigurationRuleDestinationReplicationTime>
      replicationTimes;
  final String storageClass;

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
    final map = <String, dynamic>{};
    map['accessControlTranslations'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation,
        Map<String,
            dynamic>>(accessControlTranslations, (value) => value.toMap());
    map['account'] = account;
    map['bucket'] = bucket;
    map['encryptionConfigurations'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration,
        Map<String,
            dynamic>>(encryptionConfigurations, (value) => value.toMap());
    map['metrics'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleDestinationMetric,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['replicationTimes'] = pulumi.Input.encodeList<
        GetBucketReplicationConfigurationRuleDestinationReplicationTime,
        Map<String, dynamic>>(replicationTimes, (value) => value.toMap());
    map['storageClass'] = storageClass;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDestination.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestination(
      accessControlTranslations: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation>(
          map['accessControlTranslations'],
          (value) =>
              GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation
                  .fromMap((value as Map).cast<String, dynamic>())),
      account: map['account'] as String,
      bucket: map['bucket'] as String,
      encryptionConfigurations: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration>(
          map['encryptionConfigurations'],
          (value) =>
              GetBucketReplicationConfigurationRuleDestinationEncryptionConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      metrics: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleDestinationMetric>(
          map['metrics'],
          (value) =>
              GetBucketReplicationConfigurationRuleDestinationMetric.fromMap(
                  (value as Map).cast<String, dynamic>())),
      replicationTimes: pulumi.Input.decodeList<
              GetBucketReplicationConfigurationRuleDestinationReplicationTime>(
          map['replicationTimes'],
          (value) =>
              GetBucketReplicationConfigurationRuleDestinationReplicationTime
                  .fromMap((value as Map).cast<String, dynamic>())),
      storageClass: map['storageClass'] as String,
    );
  }
}
