// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig {
  final bool enabled;

  GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
