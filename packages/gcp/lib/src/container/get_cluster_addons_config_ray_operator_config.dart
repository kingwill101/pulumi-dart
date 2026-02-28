// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_addons_config_ray_operator_config_ray_cluster_logging_config.dart';
import 'get_cluster_addons_config_ray_operator_config_ray_cluster_monitoring_config.dart';

class GetClusterAddonsConfigRayOperatorConfig {
  final bool enabled;

  /// The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>
      rayClusterLoggingConfigs;

  /// The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>
      rayClusterMonitoringConfigs;

  /// Creates a new [GetClusterAddonsConfigRayOperatorConfig].
  /// [enabled] Required.
  /// [rayClusterLoggingConfigs] The status of Ray Logging, which scrapes Ray cluster logs to Cloud Logging. Defaults to disabled; set enabled = true to enable.
  /// [rayClusterMonitoringConfigs] The status of Ray Cluster monitoring, which shows Ray cluster metrics in Cloud Console. Defaults to disabled; set enabled = true to enable.
  GetClusterAddonsConfigRayOperatorConfig({
    required this.enabled,
    required this.rayClusterLoggingConfigs,
    required this.rayClusterMonitoringConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['rayClusterLoggingConfigs'] = pulumi.Input.encodeList<
            GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig,
            Map<String, dynamic>>(
        rayClusterLoggingConfigs, (value) => value.toMap());
    map['rayClusterMonitoringConfigs'] = pulumi.Input.encodeList<
            GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig,
            Map<String, dynamic>>(
        rayClusterMonitoringConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterAddonsConfigRayOperatorConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigRayOperatorConfig(
      enabled: map['enabled'] as bool,
      rayClusterLoggingConfigs: pulumi.Input.decodeList<
              GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig>(
          map['rayClusterLoggingConfigs'],
          (value) =>
              GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      rayClusterMonitoringConfigs: pulumi.Input.decodeList<
              GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig>(
          map['rayClusterMonitoringConfigs'],
          (value) =>
              GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
