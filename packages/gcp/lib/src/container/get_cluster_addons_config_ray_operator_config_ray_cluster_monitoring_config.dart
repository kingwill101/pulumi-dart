// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
