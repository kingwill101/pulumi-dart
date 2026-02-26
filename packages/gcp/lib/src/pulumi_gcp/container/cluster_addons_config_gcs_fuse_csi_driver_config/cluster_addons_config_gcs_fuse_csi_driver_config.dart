// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGcsFuseCsiDriverConfig {
  final bool enabled;

  ClusterAddonsConfigGcsFuseCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigGcsFuseCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
