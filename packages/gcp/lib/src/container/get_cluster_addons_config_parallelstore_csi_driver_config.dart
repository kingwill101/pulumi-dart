// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigParallelstoreCsiDriverConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigParallelstoreCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigParallelstoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigParallelstoreCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
