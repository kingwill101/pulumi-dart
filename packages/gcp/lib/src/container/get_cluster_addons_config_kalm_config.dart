// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigKalmConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigKalmConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigKalmConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigKalmConfig(enabled: map['enabled'] as bool);
  }
}
