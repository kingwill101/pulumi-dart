// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final bool enabled;

  /// Creates a new [ClusterNodeConfigGcfsConfig].
  /// [enabled] Whether or not the Google Container Filesystem (GCFS) is enabled
  ClusterNodeConfigGcfsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGcfsConfig(enabled: map['enabled'] as bool);
  }
}
