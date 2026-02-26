// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  GetClusterNodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolNodeConfigGcfsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
