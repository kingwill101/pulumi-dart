// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_response.dart';
import 'managed_prometheus_config_response.dart';
import 'monitoring_component_config_response.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigResponse {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfigResponse
      advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final MonitoringComponentConfigResponse componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfigResponse managedPrometheusConfig;

  /// Creates a new [MonitoringConfigResponse].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfigResponse({
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

  factory MonitoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponse(
      advancedDatapathObservabilityConfig:
          AdvancedDatapathObservabilityConfigResponse.fromMap(
              (map['advancedDatapathObservabilityConfig'] as Map)
                  .cast<String, dynamic>()),
      componentConfig: MonitoringComponentConfigResponse.fromMap(
          (map['componentConfig'] as Map).cast<String, dynamic>()),
      managedPrometheusConfig: ManagedPrometheusConfigResponse.fromMap(
          (map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
