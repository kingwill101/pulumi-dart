// ignore_for_file: unused_element, unnecessary_cast

import '../workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration/workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration.dart';
import '../workgroup_configuration_monitoring_configuration_managed_logging_configuration/workgroup_configuration_monitoring_configuration_managed_logging_configuration.dart';
import '../workgroup_configuration_monitoring_configuration_s3_logging_configuration/workgroup_configuration_monitoring_configuration_s3_logging_configuration.dart';

class WorkgroupConfigurationMonitoringConfiguration {
  /// Configuration block for delivering logs to Amazon CloudWatch log groups. See CloudWatch Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration?
      cloudWatchLoggingConfiguration;

  /// Configuration block for managed log persistence. See Managed Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration?
      managedLoggingConfiguration;

  /// Configuration block for delivering logs to Amazon S3 buckets. See S3 Logging Configuration below.
  final WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration?
      s3LoggingConfiguration;

  WorkgroupConfigurationMonitoringConfiguration({
    this.cloudWatchLoggingConfiguration,
    this.managedLoggingConfiguration,
    this.s3LoggingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudWatchLoggingConfigurationValue = cloudWatchLoggingConfiguration;
    if (cloudWatchLoggingConfigurationValue != null) {
      map['cloudWatchLoggingConfiguration'] =
          cloudWatchLoggingConfigurationValue.toMap();
    }
    final managedLoggingConfigurationValue = managedLoggingConfiguration;
    if (managedLoggingConfigurationValue != null) {
      map['managedLoggingConfiguration'] =
          managedLoggingConfigurationValue.toMap();
    }
    final s3LoggingConfigurationValue = s3LoggingConfiguration;
    if (s3LoggingConfigurationValue != null) {
      map['s3LoggingConfiguration'] = s3LoggingConfigurationValue.toMap();
    }
    return map;
  }

  factory WorkgroupConfigurationMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfiguration(
      cloudWatchLoggingConfiguration: map['cloudWatchLoggingConfiguration'] ==
              null
          ? null
          : WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration
              .fromMap((map['cloudWatchLoggingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      managedLoggingConfiguration: map['managedLoggingConfiguration'] == null
          ? null
          : WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration
              .fromMap((map['managedLoggingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      s3LoggingConfiguration: map['s3LoggingConfiguration'] == null
          ? null
          : WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration
              .fromMap((map['s3LoggingConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
