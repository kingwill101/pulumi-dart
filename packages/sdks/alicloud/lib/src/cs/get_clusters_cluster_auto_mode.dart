// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterAutoMode {
  /// Whether to enable cluster automatic upgrade.
  final bool enabled;

  /// Creates a new [GetClustersClusterAutoMode].
  /// [enabled] Whether to enable cluster automatic upgrade.
  GetClustersClusterAutoMode({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClustersClusterAutoMode.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterAutoMode(
      enabled: map['enabled'] as bool,
    );
  }
}

