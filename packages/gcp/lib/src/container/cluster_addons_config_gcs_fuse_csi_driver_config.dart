// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGcsFuseCsiDriverConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigGcsFuseCsiDriverConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGcsFuseCsiDriverConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAddonsConfigGcsFuseCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
