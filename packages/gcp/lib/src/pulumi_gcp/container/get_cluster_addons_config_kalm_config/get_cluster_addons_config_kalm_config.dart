// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigKalmConfig {
  final bool enabled;

  GetClusterAddonsConfigKalmConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigKalmConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
