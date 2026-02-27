// ignore_for_file: unused_element, unnecessary_cast

import '../workgroup_configuration_customer_content_encryption_configuration/workgroup_configuration_customer_content_encryption_configuration.dart';
import '../workgroup_configuration_engine_version/workgroup_configuration_engine_version.dart';
import '../workgroup_configuration_identity_center_configuration/workgroup_configuration_identity_center_configuration.dart';
import '../workgroup_configuration_managed_query_results_configuration/workgroup_configuration_managed_query_results_configuration.dart';
import '../workgroup_configuration_monitoring_configuration/workgroup_configuration_monitoring_configuration.dart';
import '../workgroup_configuration_result_configuration/workgroup_configuration_result_configuration.dart';

class WorkgroupConfiguration {
  /// Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. Must be at least `10485760`.
  final int? bytesScannedCutoffPerQuery;

  /// Configuration block to specify the KMS key that is used to encrypt the user's data stores in Athena. This setting applies to the PySpark engine for Athena notebooks. See Customer Content Encryption Configuration below.
  final WorkgroupConfigurationCustomerContentEncryptionConfiguration?
      customerContentEncryptionConfiguration;

  /// Boolean indicating whether a minimum level of encryption is enforced for the workgroup for query and calculation results written to Amazon S3.
  final bool? enableMinimumEncryptionConfiguration;

  /// Boolean whether the settings for the workgroup override client-side settings. For more information, see [Workgroup Settings Override Client-Side Settings](https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html). Defaults to `true`.
  final bool? enforceWorkgroupConfiguration;

  /// Configuration block for the Athena Engine Versioning. For more information, see [Athena Engine Versioning](https://docs.aws.amazon.com/athena/latest/ug/engine-versions.html). See Engine Version below.
  final WorkgroupConfigurationEngineVersion? engineVersion;

  /// Role used to access user resources in notebook sessions and IAM Identity Center enabled workgroups. The property is required for IAM Identity Center enabled workgroups.
  final String? executionRole;

  /// Configuration block to set up an IAM Identity Center enabled workgroup. See Identity Center Configuration below.
  final WorkgroupConfigurationIdentityCenterConfiguration?
      identityCenterConfiguration;

  /// Configuration block for storing results in Athena owned storage. See Managed Query Results Configuration below.
  final WorkgroupConfigurationManagedQueryResultsConfiguration?
      managedQueryResultsConfiguration;

  /// Configuration block for managed log persistence, delivering logs to Amazon S3 buckets, Amazon CloudWatch log groups etc. Only applicable to Apache Spark engine. See Monitoring Configuration below.
  final WorkgroupConfigurationMonitoringConfiguration? monitoringConfiguration;

  /// Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to `true`.
  final bool? publishCloudwatchMetricsEnabled;

  /// If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to false , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is false . For more information about Requester Pays buckets, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) in the Amazon Simple Storage Service Developer Guide.
  final bool? requesterPaysEnabled;

  /// Configuration block with result settings. See Result Configuration below.
  final WorkgroupConfigurationResultConfiguration? resultConfiguration;

  WorkgroupConfiguration({
    this.bytesScannedCutoffPerQuery,
    this.customerContentEncryptionConfiguration,
    this.enableMinimumEncryptionConfiguration,
    this.enforceWorkgroupConfiguration,
    this.engineVersion,
    this.executionRole,
    this.identityCenterConfiguration,
    this.managedQueryResultsConfiguration,
    this.monitoringConfiguration,
    this.publishCloudwatchMetricsEnabled,
    this.requesterPaysEnabled,
    this.resultConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bytesScannedCutoffPerQueryValue = bytesScannedCutoffPerQuery;
    if (bytesScannedCutoffPerQueryValue != null) {
      map['bytesScannedCutoffPerQuery'] = bytesScannedCutoffPerQueryValue;
    }
    final customerContentEncryptionConfigurationValue =
        customerContentEncryptionConfiguration;
    if (customerContentEncryptionConfigurationValue != null) {
      map['customerContentEncryptionConfiguration'] =
          customerContentEncryptionConfigurationValue.toMap();
    }
    final enableMinimumEncryptionConfigurationValue =
        enableMinimumEncryptionConfiguration;
    if (enableMinimumEncryptionConfigurationValue != null) {
      map['enableMinimumEncryptionConfiguration'] =
          enableMinimumEncryptionConfigurationValue;
    }
    final enforceWorkgroupConfigurationValue = enforceWorkgroupConfiguration;
    if (enforceWorkgroupConfigurationValue != null) {
      map['enforceWorkgroupConfiguration'] = enforceWorkgroupConfigurationValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue.toMap();
    }
    final executionRoleValue = executionRole;
    if (executionRoleValue != null) {
      map['executionRole'] = executionRoleValue;
    }
    final identityCenterConfigurationValue = identityCenterConfiguration;
    if (identityCenterConfigurationValue != null) {
      map['identityCenterConfiguration'] =
          identityCenterConfigurationValue.toMap();
    }
    final managedQueryResultsConfigurationValue =
        managedQueryResultsConfiguration;
    if (managedQueryResultsConfigurationValue != null) {
      map['managedQueryResultsConfiguration'] =
          managedQueryResultsConfigurationValue.toMap();
    }
    final monitoringConfigurationValue = monitoringConfiguration;
    if (monitoringConfigurationValue != null) {
      map['monitoringConfiguration'] = monitoringConfigurationValue.toMap();
    }
    final publishCloudwatchMetricsEnabledValue =
        publishCloudwatchMetricsEnabled;
    if (publishCloudwatchMetricsEnabledValue != null) {
      map['publishCloudwatchMetricsEnabled'] =
          publishCloudwatchMetricsEnabledValue;
    }
    final requesterPaysEnabledValue = requesterPaysEnabled;
    if (requesterPaysEnabledValue != null) {
      map['requesterPaysEnabled'] = requesterPaysEnabledValue;
    }
    final resultConfigurationValue = resultConfiguration;
    if (resultConfigurationValue != null) {
      map['resultConfiguration'] = resultConfigurationValue.toMap();
    }
    return map;
  }

  factory WorkgroupConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfiguration(
      bytesScannedCutoffPerQuery: map['bytesScannedCutoffPerQuery'] == null
          ? null
          : map['bytesScannedCutoffPerQuery'] as int,
      customerContentEncryptionConfiguration:
          map['customerContentEncryptionConfiguration'] == null
              ? null
              : WorkgroupConfigurationCustomerContentEncryptionConfiguration
                  .fromMap(
                      (map['customerContentEncryptionConfiguration'] as Map)
                          .cast<String, dynamic>()),
      enableMinimumEncryptionConfiguration:
          map['enableMinimumEncryptionConfiguration'] == null
              ? null
              : map['enableMinimumEncryptionConfiguration'] as bool,
      enforceWorkgroupConfiguration:
          map['enforceWorkgroupConfiguration'] == null
              ? null
              : map['enforceWorkgroupConfiguration'] as bool,
      engineVersion: map['engineVersion'] == null
          ? null
          : WorkgroupConfigurationEngineVersion.fromMap(
              (map['engineVersion'] as Map).cast<String, dynamic>()),
      executionRole:
          map['executionRole'] == null ? null : map['executionRole'] as String,
      identityCenterConfiguration: map['identityCenterConfiguration'] == null
          ? null
          : WorkgroupConfigurationIdentityCenterConfiguration.fromMap(
              (map['identityCenterConfiguration'] as Map)
                  .cast<String, dynamic>()),
      managedQueryResultsConfiguration:
          map['managedQueryResultsConfiguration'] == null
              ? null
              : WorkgroupConfigurationManagedQueryResultsConfiguration.fromMap(
                  (map['managedQueryResultsConfiguration'] as Map)
                      .cast<String, dynamic>()),
      monitoringConfiguration: map['monitoringConfiguration'] == null
          ? null
          : WorkgroupConfigurationMonitoringConfiguration.fromMap(
              (map['monitoringConfiguration'] as Map).cast<String, dynamic>()),
      publishCloudwatchMetricsEnabled:
          map['publishCloudwatchMetricsEnabled'] == null
              ? null
              : map['publishCloudwatchMetricsEnabled'] as bool,
      requesterPaysEnabled: map['requesterPaysEnabled'] == null
          ? null
          : map['requesterPaysEnabled'] as bool,
      resultConfiguration: map['resultConfiguration'] == null
          ? null
          : WorkgroupConfigurationResultConfiguration.fromMap(
              (map['resultConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
