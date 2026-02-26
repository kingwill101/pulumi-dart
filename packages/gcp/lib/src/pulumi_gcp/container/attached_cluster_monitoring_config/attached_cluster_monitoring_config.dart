// ignore_for_file: unused_element, unnecessary_cast

import '../attached_cluster_monitoring_config_managed_prometheus_config/attached_cluster_monitoring_config_managed_prometheus_config.dart';

class AttachedClusterMonitoringConfig {
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  /// Structure is documented below.
  final AttachedClusterMonitoringConfigManagedPrometheusConfig?
      managedPrometheusConfig;

  AttachedClusterMonitoringConfig({
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedPrometheusConfigValue = managedPrometheusConfig;
    if (managedPrometheusConfigValue != null) {
      map['managedPrometheusConfig'] = managedPrometheusConfigValue.toMap();
    }
    return map;
  }

  factory AttachedClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterMonitoringConfig(
      managedPrometheusConfig: map['managedPrometheusConfig'] == null
          ? null
          : AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap(
              (map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
