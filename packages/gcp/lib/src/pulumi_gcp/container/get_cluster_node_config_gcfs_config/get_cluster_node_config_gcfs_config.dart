// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  GetClusterNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
