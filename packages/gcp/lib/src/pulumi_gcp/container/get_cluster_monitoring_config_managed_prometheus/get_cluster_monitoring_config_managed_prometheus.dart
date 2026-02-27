// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_monitoring_config_managed_prometheus_auto_monitoring_config/get_cluster_monitoring_config_managed_prometheus_auto_monitoring_config.dart';

class GetClusterMonitoringConfigManagedPrometheus {
  /// Configuration for GKE Workload Auto-Monitoring.
  final List<GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig>
      autoMonitoringConfigs;

  /// Whether or not the managed collection is enabled.
  final bool enabled;

  GetClusterMonitoringConfigManagedPrometheus({
    required this.autoMonitoringConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoMonitoringConfigs'] = pulumi.Input.encodeList<
        GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig,
        Map<String, dynamic>>(autoMonitoringConfigs, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterMonitoringConfigManagedPrometheus.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMonitoringConfigManagedPrometheus(
      autoMonitoringConfigs: pulumi.Input.decodeList<
              GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig>(
          map['autoMonitoringConfigs'],
          (value) =>
              GetClusterMonitoringConfigManagedPrometheusAutoMonitoringConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
