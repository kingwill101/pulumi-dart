// ignore_for_file: unused_element, unnecessary_cast

import 'attached_cluster_monitoring_config_managed_prometheus_config.dart';

class AttachedClusterMonitoringConfig {
  /// Enable Google Cloud Managed Service for Prometheus in the cluster.
  /// Structure is documented below.
  final AttachedClusterMonitoringConfigManagedPrometheusConfig? managedPrometheusConfig;

  /// Creates a new [AttachedClusterMonitoringConfig].
  /// [managedPrometheusConfig] Enable Google Cloud Managed Service for Prometheus in the cluster.
  AttachedClusterMonitoringConfig({
    this.managedPrometheusConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedPrometheusConfig': ?managedPrometheusConfig == null ? null : managedPrometheusConfig!.toMap(),
    };
  }

  factory AttachedClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterMonitoringConfig(
      managedPrometheusConfig: map['managedPrometheusConfig'] == null ? null : AttachedClusterMonitoringConfigManagedPrometheusConfig.fromMap((map['managedPrometheusConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

