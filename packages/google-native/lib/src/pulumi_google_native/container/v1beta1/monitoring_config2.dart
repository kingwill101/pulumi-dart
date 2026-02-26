// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config2.dart';
import 'managed_prometheus_config2.dart';
import 'monitoring_component_config2.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfig2 {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfig2?
      advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final MonitoringComponentConfig2? componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfig2? managedPrometheusConfig;

  MonitoringConfig2({
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

  factory MonitoringConfig2.fromMap(Map<String, dynamic> map) {
    return MonitoringConfig2(
      advancedDatapathObservabilityConfig:
          map['advancedDatapathObservabilityConfig'] == null
              ? null
              : AdvancedDatapathObservabilityConfig2.fromMap(
                  (map['advancedDatapathObservabilityConfig'] as Map)
                      .cast<String, dynamic>()),
      componentConfig: map['componentConfig'] == null
          ? null
          : MonitoringComponentConfig2.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>()),
      managedPrometheusConfig: map['managedPrometheusConfig'] == null
          ? null
          : ManagedPrometheusConfig2.fromMap(
              (map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
