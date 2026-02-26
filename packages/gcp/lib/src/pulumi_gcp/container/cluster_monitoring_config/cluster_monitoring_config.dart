// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_monitoring_config_advanced_datapath_observability_config/cluster_monitoring_config_advanced_datapath_observability_config.dart';
import '../cluster_monitoring_config_managed_prometheus/cluster_monitoring_config_managed_prometheus.dart';

class ClusterMonitoringConfig {
  /// Configuration for Advanced Datapath Monitoring. Structure is documented below.
  final ClusterMonitoringConfigAdvancedDatapathObservabilityConfig?
      advancedDatapathObservabilityConfig;

  /// The GKE components exposing metrics. Supported values include: `SYSTEM_COMPONENTS`, `APISERVER`, `SCHEDULER`, `CONTROLLER_MANAGER`, `STORAGE`, `HPA`, `POD`, `DAEMONSET`, `DEPLOYMENT`, `STATEFULSET`, `KUBELET`, `CADVISOR`, `DCGM` and `JOBSET`. In beta provider, `WORKLOADS` is supported on top of those 12 values. (`WORKLOADS` is deprecated and removed in GKE 1.24.) `KUBELET` and `CADVISOR` are only supported in GKE 1.29.3-gke.1093000 and above. `JOBSET` is only supported in GKE 1.32.1-gke.1357001 and above.
  final List<String>? enableComponents;

  /// Configuration for Managed Service for Prometheus. Structure is documented below.
  final ClusterMonitoringConfigManagedPrometheus? managedPrometheus;

  ClusterMonitoringConfig({
    this.advancedDatapathObservabilityConfig,
    this.enableComponents,
    this.managedPrometheus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedDatapathObservabilityConfigValue =
        advancedDatapathObservabilityConfig;
    if (advancedDatapathObservabilityConfigValue != null) {
      map['advancedDatapathObservabilityConfig'] =
          advancedDatapathObservabilityConfigValue.toMap();
    }
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] = enableComponentsValue;
    }
    final managedPrometheusValue = managedPrometheus;
    if (managedPrometheusValue != null) {
      map['managedPrometheus'] = managedPrometheusValue.toMap();
    }
    return map;
  }

  factory ClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringConfig(
      advancedDatapathObservabilityConfig:
          map['advancedDatapathObservabilityConfig'] == null
              ? null
              : ClusterMonitoringConfigAdvancedDatapathObservabilityConfig
                  .fromMap((map['advancedDatapathObservabilityConfig'] as Map)
                      .cast<String, dynamic>()),
      enableComponents: map['enableComponents'] == null
          ? null
          : (map['enableComponents'] as List).cast<String>(),
      managedPrometheus: map['managedPrometheus'] == null
          ? null
          : ClusterMonitoringConfigManagedPrometheus.fromMap(
              (map['managedPrometheus'] as Map).cast<String, dynamic>()),
    );
  }
}
