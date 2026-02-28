// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigDnsCacheConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigDnsCacheConfig].
  /// [enabled] Required.
  ClusterAddonsConfigDnsCacheConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigDnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigDnsCacheConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
