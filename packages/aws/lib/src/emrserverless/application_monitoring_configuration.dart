// ignore_for_file: unused_element, unnecessary_cast

import 'application_monitoring_configuration_cloudwatch_logging_configuration.dart';
import 'application_monitoring_configuration_managed_persistence_monitoring_configuration.dart';
import 'application_monitoring_configuration_prometheus_monitoring_configuration.dart';
import 'application_monitoring_configuration_s3_monitoring_configuration.dart';

class ApplicationMonitoringConfiguration {
  /// The Amazon CloudWatch configuration for monitoring logs.
  final ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration?
      cloudwatchLoggingConfiguration;

  /// The managed log persistence configuration for monitoring logs.
  final ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration?
      managedPersistenceMonitoringConfiguration;

  /// The Prometheus configuration for monitoring metrics.
  final ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration?
      prometheusMonitoringConfiguration;

  /// The Amazon S3 configuration for monitoring log publishing.
  final ApplicationMonitoringConfigurationS3MonitoringConfiguration?
      s3MonitoringConfiguration;

  /// Creates a new [ApplicationMonitoringConfiguration].
  /// [cloudwatchLoggingConfiguration] The Amazon CloudWatch configuration for monitoring logs.
  /// [managedPersistenceMonitoringConfiguration] The managed log persistence configuration for monitoring logs.
  /// [prometheusMonitoringConfiguration] The Prometheus configuration for monitoring metrics.
  /// [s3MonitoringConfiguration] The Amazon S3 configuration for monitoring log publishing.
  ApplicationMonitoringConfiguration({
    this.cloudwatchLoggingConfiguration,
    this.managedPersistenceMonitoringConfiguration,
    this.prometheusMonitoringConfiguration,
    this.s3MonitoringConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLoggingConfigurationValue = cloudwatchLoggingConfiguration;
    if (cloudwatchLoggingConfigurationValue != null) {
      map['cloudwatchLoggingConfiguration'] =
          cloudwatchLoggingConfigurationValue.toMap();
    }
    final managedPersistenceMonitoringConfigurationValue =
        managedPersistenceMonitoringConfiguration;
    if (managedPersistenceMonitoringConfigurationValue != null) {
      map['managedPersistenceMonitoringConfiguration'] =
          managedPersistenceMonitoringConfigurationValue.toMap();
    }
    final prometheusMonitoringConfigurationValue =
        prometheusMonitoringConfiguration;
    if (prometheusMonitoringConfigurationValue != null) {
      map['prometheusMonitoringConfiguration'] =
          prometheusMonitoringConfigurationValue.toMap();
    }
    final s3MonitoringConfigurationValue = s3MonitoringConfiguration;
    if (s3MonitoringConfigurationValue != null) {
      map['s3MonitoringConfiguration'] = s3MonitoringConfigurationValue.toMap();
    }
    return map;
  }

  factory ApplicationMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfiguration(
      cloudwatchLoggingConfiguration:
          map['cloudwatchLoggingConfiguration'] == null
              ? null
              : ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration
                  .fromMap((map['cloudwatchLoggingConfiguration'] as Map)
                      .cast<String, dynamic>()),
      managedPersistenceMonitoringConfiguration: map[
                  'managedPersistenceMonitoringConfiguration'] ==
              null
          ? null
          : ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration
              .fromMap((map['managedPersistenceMonitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
      prometheusMonitoringConfiguration: map[
                  'prometheusMonitoringConfiguration'] ==
              null
          ? null
          : ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration
              .fromMap((map['prometheusMonitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
      s3MonitoringConfiguration: map['s3MonitoringConfiguration'] == null
          ? null
          : ApplicationMonitoringConfigurationS3MonitoringConfiguration.fromMap(
              (map['s3MonitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
