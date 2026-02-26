// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final bool enabled;

  ClusterNodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolNodeConfigGcfsConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
