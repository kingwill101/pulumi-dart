// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_monitoring_config_managed_prometheus_auto_monitoring_config.dart';

class ClusterMonitoringConfigManagedPrometheus {
  /// Configuration options for GKE Auto-Monitoring.
  final ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig?
  autoMonitoringConfig;

  /// Whether or not the managed collection is enabled.
  final bool enabled;

  /// Creates a new [ClusterMonitoringConfigManagedPrometheus].
  /// [autoMonitoringConfig] Configuration options for GKE Auto-Monitoring.
  /// [enabled] Whether or not the managed collection is enabled.
  ClusterMonitoringConfigManagedPrometheus({
    this.autoMonitoringConfig,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoMonitoringConfig': ?autoMonitoringConfig == null
          ? null
          : autoMonitoringConfig!.toMap(),
      'enabled': enabled,
    };
  }

  factory ClusterMonitoringConfigManagedPrometheus.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMonitoringConfigManagedPrometheus(
      autoMonitoringConfig: map['autoMonitoringConfig'] == null
          ? null
          : ClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig.fromMap(
              (map['autoMonitoringConfig'] as Map).cast<String, dynamic>(),
            ),
      enabled: map['enabled'] as bool,
    );
  }
}
