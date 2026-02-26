// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final bool enabled;

  GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
