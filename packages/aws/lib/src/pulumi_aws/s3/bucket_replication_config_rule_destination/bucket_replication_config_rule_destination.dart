// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_replication_config_rule_destination_access_control_translation/bucket_replication_config_rule_destination_access_control_translation.dart';
import '../bucket_replication_config_rule_destination_encryption_configuration/bucket_replication_config_rule_destination_encryption_configuration.dart';
import '../bucket_replication_config_rule_destination_metrics/bucket_replication_config_rule_destination_metrics.dart';
import '../bucket_replication_config_rule_destination_replication_time/bucket_replication_config_rule_destination_replication_time.dart';

class BucketReplicationConfigRuleDestination {
  /// Configuration block that specifies the overrides to use for object owners on replication. See below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with <span pulumi-lang-nodejs="`account`" pulumi-lang-dotnet="`Account`" pulumi-lang-go="`account`" pulumi-lang-python="`account`" pulumi-lang-yaml="`account`" pulumi-lang-java="`account`">`account`</span> owner override configuration.
  final BucketReplicationConfigRuleDestinationAccessControlTranslation?
      accessControlTranslation;

  /// Account ID to specify the replica ownership. Must be used in conjunction with <span pulumi-lang-nodejs="`accessControlTranslation`" pulumi-lang-dotnet="`AccessControlTranslation`" pulumi-lang-go="`accessControlTranslation`" pulumi-lang-python="`access_control_translation`" pulumi-lang-yaml="`accessControlTranslation`" pulumi-lang-java="`accessControlTranslation`">`access_control_translation`</span> override configuration.
  final String? account;

  /// ARN of the bucket where you want Amazon S3 to store the results.
  final String bucket;

  /// Configuration block that provides information about encryption. See below. If <span pulumi-lang-nodejs="`sourceSelectionCriteria`" pulumi-lang-dotnet="`SourceSelectionCriteria`" pulumi-lang-go="`sourceSelectionCriteria`" pulumi-lang-python="`source_selection_criteria`" pulumi-lang-yaml="`sourceSelectionCriteria`" pulumi-lang-java="`sourceSelectionCriteria`">`source_selection_criteria`</span> is specified, you must specify this element.
  final BucketReplicationConfigRuleDestinationEncryptionConfiguration?
      encryptionConfiguration;

  /// Configuration block that specifies replication metrics-related settings enabling replication metrics and events. See below.
  final BucketReplicationConfigRuleDestinationMetrics? metrics;

  /// Configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. See below. Replication Time Control must be used in conjunction with <span pulumi-lang-nodejs="`metrics`" pulumi-lang-dotnet="`Metrics`" pulumi-lang-go="`metrics`" pulumi-lang-python="`metrics`" pulumi-lang-yaml="`metrics`" pulumi-lang-java="`metrics`">`metrics`</span>.
  final BucketReplicationConfigRuleDestinationReplicationTime? replicationTime;

  /// The [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Destination.html#AmazonS3-Type-Destination-StorageClass) used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  final String? storageClass;

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
    final map = <String, dynamic>{};
    final accessControlTranslationValue = accessControlTranslation;
    if (accessControlTranslationValue != null) {
      map['accessControlTranslation'] = accessControlTranslationValue.toMap();
    }
    final accountValue = account;
    if (accountValue != null) {
      map['account'] = accountValue;
    }
    map['bucket'] = bucket;
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = encryptionConfigurationValue.toMap();
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = metricsValue.toMap();
    }
    final replicationTimeValue = replicationTime;
    if (replicationTimeValue != null) {
      map['replicationTime'] = replicationTimeValue.toMap();
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    return map;
  }

  factory BucketReplicationConfigRuleDestination.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestination(
      accessControlTranslation: map['accessControlTranslation'] == null
          ? null
          : BucketReplicationConfigRuleDestinationAccessControlTranslation
              .fromMap((map['accessControlTranslation'] as Map)
                  .cast<String, dynamic>()),
      account: map['account'] == null ? null : map['account'] as String,
      bucket: map['bucket'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : BucketReplicationConfigRuleDestinationEncryptionConfiguration
              .fromMap((map['encryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      metrics: map['metrics'] == null
          ? null
          : BucketReplicationConfigRuleDestinationMetrics.fromMap(
              (map['metrics'] as Map).cast<String, dynamic>()),
      replicationTime: map['replicationTime'] == null
          ? null
          : BucketReplicationConfigRuleDestinationReplicationTime.fromMap(
              (map['replicationTime'] as Map).cast<String, dynamic>()),
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}
