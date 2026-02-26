// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigKalmConfig {
  final bool enabled;

  ClusterAddonsConfigKalmConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigKalmConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
