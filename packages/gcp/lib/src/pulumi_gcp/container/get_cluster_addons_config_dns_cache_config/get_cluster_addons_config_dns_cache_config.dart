// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigDnsCacheConfig {
  final bool enabled;

  GetClusterAddonsConfigDnsCacheConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigDnsCacheConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigDnsCacheConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
