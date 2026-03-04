// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_monitoring_configuration_cloudwatch_logging_configuration.dart';
import 'application_monitoring_configuration_managed_persistence_monitoring_configuration.dart';
import 'application_monitoring_configuration_prometheus_monitoring_configuration.dart';
import 'application_monitoring_configuration_s3_monitoring_configuration.dart';

class ApplicationMonitoringConfiguration {
  /// The Amazon CloudWatch configuration for monitoring logs.
  final pulumi.Input<
    ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration
  >?
  cloudwatchLoggingConfiguration;

  /// The managed log persistence configuration for monitoring logs.
  final pulumi.Input<
    ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration
  >?
  managedPersistenceMonitoringConfiguration;

  /// The Prometheus configuration for monitoring metrics.
  final pulumi.Input<
    ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration
  >?
  prometheusMonitoringConfiguration;

  /// The Amazon S3 configuration for monitoring log publishing.
  final pulumi.Input<
    ApplicationMonitoringConfigurationS3MonitoringConfiguration
  >?
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
    return <String, dynamic>{
      'cloudwatchLoggingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration,
            Map<String, dynamic>
          >(cloudwatchLoggingConfiguration, (value) => value.toMap()),
      'managedPersistenceMonitoringConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration,
            Map<String, dynamic>
          >(
            managedPersistenceMonitoringConfiguration,
            (value) => value.toMap(),
          ),
      'prometheusMonitoringConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration,
            Map<String, dynamic>
          >(prometheusMonitoringConfiguration, (value) => value.toMap()),
      's3MonitoringConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationMonitoringConfigurationS3MonitoringConfiguration,
            Map<String, dynamic>
          >(s3MonitoringConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfiguration(
      cloudwatchLoggingConfiguration: (() {
        final guardedValue = map['cloudwatchLoggingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedPersistenceMonitoringConfiguration: (() {
        final guardedValue = map['managedPersistenceMonitoringConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      prometheusMonitoringConfiguration: (() {
        final guardedValue = map['prometheusMonitoringConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationMonitoringConfigurationPrometheusMonitoringConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3MonitoringConfiguration: (() {
        final guardedValue = map['s3MonitoringConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationMonitoringConfigurationS3MonitoringConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
