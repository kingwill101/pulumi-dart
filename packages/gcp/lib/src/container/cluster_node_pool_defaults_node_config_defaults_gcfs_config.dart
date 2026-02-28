// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final bool enabled;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig].
  /// [enabled] Whether or not the Google Container Filesystem (GCFS) is enabled
  ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

