// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigDnsCacheConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigDnsCacheConfig].
  /// [enabled] Required.
  ClusterAddonsConfigDnsCacheConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigDnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigDnsCacheConfig(enabled: map['enabled'] as bool);
  }
}
