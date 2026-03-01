// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigGcePersistentDiskCsiDriverConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGcePersistentDiskCsiDriverConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAddonsConfigGcePersistentDiskCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
