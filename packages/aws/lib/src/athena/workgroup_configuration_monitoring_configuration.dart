// ignore_for_file: unused_element, unnecessary_cast

import 'workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration.dart';
import 'workgroup_configuration_monitoring_configuration_managed_logging_configuration.dart';
import 'workgroup_configuration_monitoring_configuration_s3_logging_configuration.dart';

class WorkgroupConfigurationMonitoringConfiguration {
  /// Configuration block for delivering logs to Amazon CloudWatch log groups. See CloudWatch Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration? cloudWatchLoggingConfiguration;
  /// Configuration block for managed log persistence. See Managed Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration? managedLoggingConfiguration;
  /// Configuration block for delivering logs to Amazon S3 buckets. See S3 Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration? s3LoggingConfiguration;

  /// Creates a new [WorkgroupConfigurationMonitoringConfiguration].
  /// [cloudWatchLoggingConfiguration] Configuration block for delivering logs to Amazon CloudWatch log groups. See CloudWatch Logging Configuration below.
  /// [managedLoggingConfiguration] Configuration block for managed log persistence. See Managed Logging Configuration below.
  /// [s3LoggingConfiguration] Configuration block for delivering logs to Amazon S3 buckets. See S3 Logging Configuration below.
  WorkgroupConfigurationMonitoringConfiguration({
    this.cloudWatchLoggingConfiguration,
    this.managedLoggingConfiguration,
    this.s3LoggingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLoggingConfiguration': ?cloudWatchLoggingConfiguration == null ? null : cloudWatchLoggingConfiguration!.toMap(),
      'managedLoggingConfiguration': ?managedLoggingConfiguration == null ? null : managedLoggingConfiguration!.toMap(),
      's3LoggingConfiguration': ?s3LoggingConfiguration == null ? null : s3LoggingConfiguration!.toMap(),
    };
  }

  factory WorkgroupConfigurationMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfiguration(
      cloudWatchLoggingConfiguration: map['cloudWatchLoggingConfiguration'] == null ? null : WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration.fromMap((map['cloudWatchLoggingConfiguration'] as Map).cast<String, dynamic>()),
      managedLoggingConfiguration: map['managedLoggingConfiguration'] == null ? null : WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration.fromMap((map['managedLoggingConfiguration'] as Map).cast<String, dynamic>()),
      s3LoggingConfiguration: map['s3LoggingConfiguration'] == null ? null : WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration.fromMap((map['s3LoggingConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

