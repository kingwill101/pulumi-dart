// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigGcsFuseCsiDriverConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigGcsFuseCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigGcsFuseCsiDriverConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigGcsFuseCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
