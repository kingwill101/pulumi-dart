// ignore_for_file: unused_element, unnecessary_cast

import 'application_monitoring_configuration_cloudwatch_logging_configuration.dart';
import 'application_monitoring_configuration_managed_persistence_monitoring_configuration.dart';
import 'application_monitoring_configuration_prometheus_monitoring_configuration.dart';
import 'application_monitoring_configuration_s3_monitoring_configuration.dart';

class ApplicationMonitoringConfiguration {
  /// The Amazon CloudWatch configuration for monitoring logs.
  final ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration? cloudwatchLoggingConfiguration;
  /// The managed log persistence configuration for monitoring logs.
  final ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration? managedPersistenceMonitoringConfiguration;
  /// The Prometheus configuration for monitoring metrics.
  final ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration? prometheusMonitoringConfiguration;
  /// The Amazon S3 configuration for monitoring log publishing.
  final ApplicationMonitoringConfigurationS3MonitoringConfiguration? s3MonitoringConfiguration;

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
    return <String, dynamic>{
      'cloudwatchLoggingConfiguration': ?cloudwatchLoggingConfiguration == null ? null : cloudwatchLoggingConfiguration!.toMap(),
      'managedPersistenceMonitoringConfiguration': ?managedPersistenceMonitoringConfiguration == null ? null : managedPersistenceMonitoringConfiguration!.toMap(),
      'prometheusMonitoringConfiguration': ?prometheusMonitoringConfiguration == null ? null : prometheusMonitoringConfiguration!.toMap(),
      's3MonitoringConfiguration': ?s3MonitoringConfiguration == null ? null : s3MonitoringConfiguration!.toMap(),
    };
  }

  factory ApplicationMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfiguration(
      cloudwatchLoggingConfiguration: map['cloudwatchLoggingConfiguration'] == null ? null : ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration.fromMap((map['cloudwatchLoggingConfiguration'] as Map).cast<String, dynamic>()),
      managedPersistenceMonitoringConfiguration: map['managedPersistenceMonitoringConfiguration'] == null ? null : ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration.fromMap((map['managedPersistenceMonitoringConfiguration'] as Map).cast<String, dynamic>()),
      prometheusMonitoringConfiguration: map['prometheusMonitoringConfiguration'] == null ? null : ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration.fromMap((map['prometheusMonitoringConfiguration'] as Map).cast<String, dynamic>()),
      s3MonitoringConfiguration: map['s3MonitoringConfiguration'] == null ? null : ApplicationMonitoringConfigurationS3MonitoringConfiguration.fromMap((map['s3MonitoringConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

