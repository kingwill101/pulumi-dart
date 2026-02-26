// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final bool enabled;

  ClusterAddonsConfigGcePersistentDiskCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigGcePersistentDiskCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
