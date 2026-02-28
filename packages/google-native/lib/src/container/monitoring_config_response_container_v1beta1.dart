// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_response_container_v1beta1.dart';
import 'managed_prometheus_config_response_container_v1beta1.dart';
import 'monitoring_component_config_response_container_v1beta1.dart';

/// MonitoringConfig is cluster monitoring configuration.
class MonitoringConfigResponseContainerV1beta1 {
  /// Configuration of Advanced Datapath Observability features.
  final AdvancedDatapathObservabilityConfigResponseContainerV1beta1 advancedDatapathObservabilityConfig;
  /// Monitoring components configuration
  final MonitoringComponentConfigResponseContainerV1beta1 componentConfig;
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  final ManagedPrometheusConfigResponseContainerV1beta1 managedPrometheusConfig;

  /// Creates a new [MonitoringConfigResponseContainerV1beta1].
  /// [advancedDatapathObservabilityConfig] Configuration of Advanced Datapath Observability features.
  /// [componentConfig] Monitoring components configuration
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  MonitoringConfigResponseContainerV1beta1({
    required this.advancedDatapathObservabilityConfig,
    required this.componentConfig,
    required this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedDatapathObservabilityConfig': advancedDatapathObservabilityConfig.toMap(),
      'componentConfig': componentConfig.toMap(),
      'managedPrometheusConfig': managedPrometheusConfig.toMap(),
    };
  }

  factory MonitoringConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponseContainerV1beta1(
      advancedDatapathObservabilityConfig: AdvancedDatapathObservabilityConfigResponseContainerV1beta1.fromMap((map['advancedDatapathObservabilityConfig'] as Map).cast<String, dynamic>()),
      componentConfig: MonitoringComponentConfigResponseContainerV1beta1.fromMap((map['componentConfig'] as Map).cast<String, dynamic>()),
      managedPrometheusConfig: ManagedPrometheusConfigResponseContainerV1beta1.fromMap((map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

