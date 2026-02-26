// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_response2.dart';
import 'managed_prometheus_config_response2.dart';
import 'monitoring_component_config_response2.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigResponse2 {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfigResponse2
      advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final MonitoringComponentConfigResponse2 componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfigResponse2 managedPrometheusConfig;

  MonitoringConfigResponse2({
    required this.advancedDatapathObservabilityConfig,
    required this.componentConfig,
    required this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedDatapathObservabilityConfig'] =
        advancedDatapathObservabilityConfig.toMap();
    map['componentConfig'] = componentConfig.toMap();
    map['managedPrometheusConfig'] = managedPrometheusConfig.toMap();
    return map;
  }

  factory MonitoringConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponse2(
      advancedDatapathObservabilityConfig:
          AdvancedDatapathObservabilityConfigResponse2.fromMap(
              (map['advancedDatapathObservabilityConfig'] as Map)
                  .cast<String, dynamic>()),
      componentConfig: MonitoringComponentConfigResponse2.fromMap(
          (map['componentConfig'] as Map).cast<String, dynamic>()),
      managedPrometheusConfig: ManagedPrometheusConfigResponse2.fromMap(
          (map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
