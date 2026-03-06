// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_customer_content_encryption_configuration.dart';
import 'workgroup_configuration_engine_version.dart';
import 'workgroup_configuration_identity_center_configuration.dart';
import 'workgroup_configuration_managed_query_results_configuration.dart';
import 'workgroup_configuration_monitoring_configuration.dart';
import 'workgroup_configuration_result_configuration.dart';

class WorkgroupConfiguration {
  /// Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. Must be at least `10485760`.
  final pulumi.Input<int>? bytesScannedCutoffPerQuery;
  /// Configuration block to specify the KMS key that is used to encrypt the user's data stores in Athena. This setting applies to the PySpark engine for Athena notebooks. See Customer Content Encryption Configuration below.
  final pulumi.Input<WorkgroupConfigurationCustomerContentEncryptionConfiguration>? customerContentEncryptionConfiguration;
  /// Boolean indicating whether a minimum level of encryption is enforced for the workgroup for query and calculation results written to Amazon S3.
  final pulumi.Input<bool>? enableMinimumEncryptionConfiguration;
  /// Boolean whether the settings for the workgroup override client-side settings. For more information, see [Workgroup Settings Override Client-Side Settings](https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html). Defaults to `true`.
  final pulumi.Input<bool>? enforceWorkgroupConfiguration;
  /// Configuration block for the Athena Engine Versioning. For more information, see [Athena Engine Versioning](https://docs.aws.amazon.com/athena/latest/ug/engine-versions.html). See Engine Version below.
  final pulumi.Input<WorkgroupConfigurationEngineVersion>? engineVersion;
  /// Role used to access user resources in notebook sessions and IAM Identity Center enabled workgroups. The property is required for IAM Identity Center enabled workgroups.
  final pulumi.Input<String>? executionRole;
  /// Configuration block to set up an IAM Identity Center enabled workgroup. See Identity Center Configuration below.
  final pulumi.Input<WorkgroupConfigurationIdentityCenterConfiguration>? identityCenterConfiguration;
  /// Configuration block for storing results in Athena owned storage. See Managed Query Results Configuration below.
  final pulumi.Input<WorkgroupConfigurationManagedQueryResultsConfiguration>? managedQueryResultsConfiguration;
  /// Configuration block for managed log persistence, delivering logs to Amazon S3 buckets, Amazon CloudWatch log groups etc. Only applicable to Apache Spark engine. See Monitoring Configuration below.
  final pulumi.Input<WorkgroupConfigurationMonitoringConfiguration>? monitoringConfiguration;
  /// Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to `true`.
  final pulumi.Input<bool>? publishCloudwatchMetricsEnabled;
  /// If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to false , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is false . For more information about Requester Pays buckets, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) in the Amazon Simple Storage Service Developer Guide.
  final pulumi.Input<bool>? requesterPaysEnabled;
  /// Configuration block with result settings. See Result Configuration below.
  final pulumi.Input<WorkgroupConfigurationResultConfiguration>? resultConfiguration;

  /// Creates a new [WorkgroupConfiguration].
  /// [bytesScannedCutoffPerQuery] Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. Must be at least `10485760`.
  /// [customerContentEncryptionConfiguration] Configuration block to specify the KMS key that is used to encrypt the user's data stores in Athena. This setting applies to the PySpark engine for Athena notebooks. See Customer Content Encryption Configuration below.
  /// [enableMinimumEncryptionConfiguration] Boolean indicating whether a minimum level of encryption is enforced for the workgroup for query and calculation results written to Amazon S3.
  /// [enforceWorkgroupConfiguration] Boolean whether the settings for the workgroup override client-side settings. For more information, see [Workgroup Settings Override Client-Side Settings](https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html). Defaults to `true`.
  /// [engineVersion] Configuration block for the Athena Engine Versioning. For more information, see [Athena Engine Versioning](https://docs.aws.amazon.com/athena/latest/ug/engine-versions.html). See Engine Version below.
  /// [executionRole] Role used to access user resources in notebook sessions and IAM Identity Center enabled workgroups. The property is required for IAM Identity Center enabled workgroups.
  /// [identityCenterConfiguration] Configuration block to set up an IAM Identity Center enabled workgroup. See Identity Center Configuration below.
  /// [managedQueryResultsConfiguration] Configuration block for storing results in Athena owned storage. See Managed Query Results Configuration below.
  /// [monitoringConfiguration] Configuration block for managed log persistence, delivering logs to Amazon S3 buckets, Amazon CloudWatch log groups etc. Only applicable to Apache Spark engine. See Monitoring Configuration below.
  /// [publishCloudwatchMetricsEnabled] Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to `true`.
  /// [requesterPaysEnabled] If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to false , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is false . For more information about Requester Pays buckets, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) in the Amazon Simple Storage Service Developer Guide.
  /// [resultConfiguration] Configuration block with result settings. See Result Configuration below.
  const WorkgroupConfiguration({
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
    return <String, dynamic>{
      'bytesScannedCutoffPerQuery': ?bytesScannedCutoffPerQuery,
      'customerContentEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationCustomerContentEncryptionConfiguration, Map<String, dynamic>>(customerContentEncryptionConfiguration, (value) => value.toMap()),
      'enableMinimumEncryptionConfiguration': ?enableMinimumEncryptionConfiguration,
      'enforceWorkgroupConfiguration': ?enforceWorkgroupConfiguration,
      'engineVersion': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationEngineVersion, Map<String, dynamic>>(engineVersion, (value) => value.toMap()),
      'executionRole': ?executionRole,
      'identityCenterConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationIdentityCenterConfiguration, Map<String, dynamic>>(identityCenterConfiguration, (value) => value.toMap()),
      'managedQueryResultsConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationManagedQueryResultsConfiguration, Map<String, dynamic>>(managedQueryResultsConfiguration, (value) => value.toMap()),
      'monitoringConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationMonitoringConfiguration, Map<String, dynamic>>(monitoringConfiguration, (value) => value.toMap()),
      'publishCloudwatchMetricsEnabled': ?publishCloudwatchMetricsEnabled,
      'requesterPaysEnabled': ?requesterPaysEnabled,
      'resultConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationResultConfiguration, Map<String, dynamic>>(resultConfiguration, (value) => value.toMap()),
    };
  }

  factory WorkgroupConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfiguration(
      bytesScannedCutoffPerQuery: (() { final guardedValue = map['bytesScannedCutoffPerQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerContentEncryptionConfiguration: (() { final guardedValue = map['customerContentEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationCustomerContentEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableMinimumEncryptionConfiguration: (() { final guardedValue = map['enableMinimumEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforceWorkgroupConfiguration: (() { final guardedValue = map['enforceWorkgroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationEngineVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRole: (() { final guardedValue = map['executionRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterConfiguration: (() { final guardedValue = map['identityCenterConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationIdentityCenterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedQueryResultsConfiguration: (() { final guardedValue = map['managedQueryResultsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationManagedQueryResultsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringConfiguration: (() { final guardedValue = map['monitoringConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationMonitoringConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishCloudwatchMetricsEnabled: (() { final guardedValue = map['publishCloudwatchMetricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requesterPaysEnabled: (() { final guardedValue = map['requesterPaysEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resultConfiguration: (() { final guardedValue = map['resultConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationResultConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

