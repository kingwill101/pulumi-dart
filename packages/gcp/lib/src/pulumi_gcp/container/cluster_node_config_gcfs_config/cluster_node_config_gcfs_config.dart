// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final bool enabled;

  ClusterNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
