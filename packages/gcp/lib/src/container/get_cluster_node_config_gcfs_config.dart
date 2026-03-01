// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  GetClusterNodeConfigGcfsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGcfsConfig(enabled: map['enabled'] as bool);
  }
}
