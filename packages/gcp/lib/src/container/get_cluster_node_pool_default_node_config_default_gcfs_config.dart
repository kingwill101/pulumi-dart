// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
