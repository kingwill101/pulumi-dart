// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigParallelstoreCsiDriverConfig {
  final bool enabled;

  ClusterAddonsConfigParallelstoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigParallelstoreCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
