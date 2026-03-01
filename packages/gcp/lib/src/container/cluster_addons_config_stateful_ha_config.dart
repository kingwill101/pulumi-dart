// ignore_for_file: unused_element, unnecessary_cast


class ClusterAddonsConfigStatefulHaConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigStatefulHaConfig].
  /// [enabled] Required.
  ClusterAddonsConfigStatefulHaConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigStatefulHaConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigStatefulHaConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

