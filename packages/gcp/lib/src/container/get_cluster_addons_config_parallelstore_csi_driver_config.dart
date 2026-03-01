// ignore_for_file: unused_element, unnecessary_cast


class GetClusterAddonsConfigParallelstoreCsiDriverConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigParallelstoreCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigParallelstoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigParallelstoreCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

