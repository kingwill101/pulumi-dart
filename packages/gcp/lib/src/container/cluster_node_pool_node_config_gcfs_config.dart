// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final bool enabled;

  /// Creates a new [ClusterNodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not the Google Container Filesystem (GCFS) is enabled
  ClusterNodePoolNodeConfigGcfsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodePoolNodeConfigGcfsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigGcfsConfig(enabled: map['enabled'] as bool);
  }
}
