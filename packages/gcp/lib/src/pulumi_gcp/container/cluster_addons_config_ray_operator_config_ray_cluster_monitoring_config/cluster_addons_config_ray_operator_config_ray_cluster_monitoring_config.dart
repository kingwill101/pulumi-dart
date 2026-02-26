// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig {
  final bool enabled;

  ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
