// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigStatefulHaConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigStatefulHaConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigStatefulHaConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigStatefulHaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigStatefulHaConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
