// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_addons_config_ray_operator_config_ray_cluster_logging_config/cluster_addons_config_ray_operator_config_ray_cluster_logging_config.dart';
import '../cluster_addons_config_ray_operator_config_ray_cluster_monitoring_config/cluster_addons_config_ray_operator_config_ray_cluster_monitoring_config.dart';

class ClusterAddonsConfigRayOperatorConfig {
  final bool enabled;

  /// The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  final ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig?
      rayClusterLoggingConfig;

  /// The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  final ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig?
      rayClusterMonitoringConfig;

  ClusterAddonsConfigRayOperatorConfig({
    required this.enabled,
    this.rayClusterLoggingConfig,
    this.rayClusterMonitoringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final rayClusterLoggingConfigValue = rayClusterLoggingConfig;
    if (rayClusterLoggingConfigValue != null) {
      map['rayClusterLoggingConfig'] = rayClusterLoggingConfigValue.toMap();
    }
    final rayClusterMonitoringConfigValue = rayClusterMonitoringConfig;
    if (rayClusterMonitoringConfigValue != null) {
      map['rayClusterMonitoringConfig'] =
          rayClusterMonitoringConfigValue.toMap();
    }
    return map;
  }

  factory ClusterAddonsConfigRayOperatorConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfig(
      enabled: map['enabled'] as bool,
      rayClusterLoggingConfig: map['rayClusterLoggingConfig'] == null
          ? null
          : ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap(
              (map['rayClusterLoggingConfig'] as Map).cast<String, dynamic>()),
      rayClusterMonitoringConfig: map['rayClusterMonitoringConfig'] == null
          ? null
          : ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig
              .fromMap((map['rayClusterMonitoringConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
