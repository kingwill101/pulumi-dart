// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_container_v1beta1.dart';
import 'managed_prometheus_config_container_v1beta1.dart';
import 'monitoring_component_config_container_v1beta1.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigContainerV1beta1 {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfigContainerV1beta1?
  advancedDatapathObservabilityConfig;

  /// Monitoring components configuration
  final MonitoringComponentConfigContainerV1beta1? componentConfig;

  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfigContainerV1beta1? managedPrometheusConfig;

  /// Creates a new [MonitoringConfigContainerV1beta1].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfigContainerV1beta1({
    this.advancedDatapathObservabilityConfig,
    this.componentConfig,
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig':
          ?advancedDatapathObservabilityConfig == null
          ? null
          : advancedDatapathObservabilityConfig!.toMap(),
      'componentConfig': ?componentConfig == null
          ? null
          : componentConfig!.toMap(),
      'managedPrometheusConfig': ?managedPrometheusConfig == null
          ? null
          : managedPrometheusConfig!.toMap(),
    };
  }

  factory MonitoringConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigContainerV1beta1(
      advancedDatapathObservabilityConfig:
          map['advancedDatapathObservabilityConfig'] == null
          ? null
          : AdvancedDatapathObservabilityConfigContainerV1beta1.fromMap(
              (map['advancedDatapathObservabilityConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      componentConfig: map['componentConfig'] == null
          ? null
          : MonitoringComponentConfigContainerV1beta1.fromMap(
              (map['componentConfig'] as Map).cast<String, dynamic>(),
            ),
      managedPrometheusConfig: map['managedPrometheusConfig'] == null
          ? null
          : ManagedPrometheusConfigContainerV1beta1.fromMap(
              (map['managedPrometheusConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
