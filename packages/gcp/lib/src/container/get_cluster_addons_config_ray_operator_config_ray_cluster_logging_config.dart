// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
