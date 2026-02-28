// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config.dart';
import 'managed_prometheus_config.dart';
import 'monitoring_component_config.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfig {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfig?
      advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final MonitoringComponentConfig? componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfig? managedPrometheusConfig;

  /// Creates a new [MonitoringConfig].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfig({
    this.advancedDatapathObservabilityConfig,
    this.componentConfig,
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedDatapathObservabilityConfigValue =
        advancedDatapathObservabilityConfig;
    if (advancedDatapathObservabilityConfigValue != null) {
      map['advancedDatapathObservabilityConfig'] =
          advancedDatapathObservabilityConfigValue.toMap();
    }
    final componentConfigValue = componentConfig;
    if (componentConfigValue != null) {
      map['componentConfig'] = componentConfigValue.toMap();
    }
    final managedPrometheusConfigValue = managedPrometheusConfig;
    if (managedPrometheusConfigValue != null) {
      map['managedPrometheusConfig'] = managedPrometheusConfigValue.toMap();
    }
    return map;
  }

  factory MonitoringConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringConfig(
      advancedDatapathObservabilityConfig:
          map['advancedDatapathObservabilityConfig'] == null
              ? null
              : AdvancedDatapathObservabilityConfig.fromMap(
                  (map['advancedDatapathObservabilityConfig'] as Map)
                      .cast<String, dynamic>()),
      componentConfig: map['componentConfig'] == null
          ? null
          : MonitoringComponentConfig.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
      managedPrometheusConfig: map['managedPrometheusConfig'] == null
          ? null
          : ManagedPrometheusConfig.fromMap(
              (map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
