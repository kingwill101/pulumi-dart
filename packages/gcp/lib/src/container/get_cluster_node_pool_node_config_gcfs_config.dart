// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  GetClusterNodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

