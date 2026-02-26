// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig {
  final bool enabled;

  ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
