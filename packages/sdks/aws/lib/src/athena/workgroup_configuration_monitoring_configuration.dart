// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration.dart';
import 'workgroup_configuration_monitoring_configuration_managed_logging_configuration.dart';
import 'workgroup_configuration_monitoring_configuration_s3_logging_configuration.dart';

class WorkgroupConfigurationMonitoringConfiguration {
  /// Configuration block for delivering logs to Amazon CloudWatch log groups. See CloudWatch Logging Configuration below.
  final pulumi.Input<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration?>? cloudWatchLoggingConfiguration;
  /// Configuration block for managed log persistence. See Managed Logging Configuration below.
  final pulumi.Input<WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration?>? managedLoggingConfiguration;
  /// Configuration block for delivering logs to Amazon S3 buckets. See S3 Logging Configuration below.
  final pulumi.Input<WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration?>? s3LoggingConfiguration;

  /// Creates a new [WorkgroupConfigurationMonitoringConfiguration].
  /// [cloudWatchLoggingConfiguration] Configuration block for delivering logs to Amazon CloudWatch log groups. See CloudWatch Logging Configuration below.
  /// [managedLoggingConfiguration] Configuration block for managed log persistence. See Managed Logging Configuration below.
  /// [s3LoggingConfiguration] Configuration block for delivering logs to Amazon S3 buckets. See S3 Logging Configuration below.
  const WorkgroupConfigurationMonitoringConfiguration({
    this.cloudWatchLoggingConfiguration,
    this.managedLoggingConfiguration,
    this.s3LoggingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLoggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration, Map<String, dynamic>>(cloudWatchLoggingConfiguration, (value) => value.toMap()),
      'managedLoggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration, Map<String, dynamic>>(managedLoggingConfiguration, (value) => value.toMap()),
      's3LoggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration, Map<String, dynamic>>(s3LoggingConfiguration, (value) => value.toMap()),
    };
  }

  factory WorkgroupConfigurationMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfiguration(
      cloudWatchLoggingConfiguration: (() { final guardedValue = map['cloudWatchLoggingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedLoggingConfiguration: (() { final guardedValue = map['managedLoggingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3LoggingConfiguration: (() { final guardedValue = map['s3LoggingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
