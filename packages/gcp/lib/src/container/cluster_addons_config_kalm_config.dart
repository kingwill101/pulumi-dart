// ignore_for_file: unused_element, unnecessary_cast


class ClusterAddonsConfigKalmConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigKalmConfig].
  /// [enabled] Required.
  ClusterAddonsConfigKalmConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigKalmConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

