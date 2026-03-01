// ignore_for_file: unused_element, unnecessary_cast


class GetDomainClusterConfigNodeOptionNodeConfig {
  /// Number of nodes of a particular node type in the cluster.
  final int count;
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;
  /// The instance type of a particular node type in the cluster.
  final String type;

  /// Creates a new [GetDomainClusterConfigNodeOptionNodeConfig].
  /// [count] Number of nodes of a particular node type in the cluster.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [type] The instance type of a particular node type in the cluster.
  GetDomainClusterConfigNodeOptionNodeConfig({
    required this.count,
    required this.enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'enabled': enabled,
      'type': type,
    };
  }

  factory GetDomainClusterConfigNodeOptionNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigNodeOptionNodeConfig(
      count: map['count'] as int,
      enabled: map['enabled'] as bool,
      type: map['type'] as String,
    );
  }
}

