// ignore_for_file: unused_element, unnecessary_cast


class GetClusterAddonsConfigDnsCacheConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigDnsCacheConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigDnsCacheConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigDnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigDnsCacheConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

