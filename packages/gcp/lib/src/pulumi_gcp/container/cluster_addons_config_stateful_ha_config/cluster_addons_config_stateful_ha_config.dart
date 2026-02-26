// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigStatefulHaConfig {
  final bool enabled;

  ClusterAddonsConfigStatefulHaConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigStatefulHaConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigStatefulHaConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
