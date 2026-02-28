// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigNodeOptionNodeConfig {
  /// Number of nodes of a particular node type in the cluster.
  final int? count;

  /// Whether a particular node type is enabled.
  final bool? enabled;

  /// The instance type of a particular node type in the cluster.
  final String? type;

  /// Creates a new [DomainClusterConfigNodeOptionNodeConfig].
  /// [count] Number of nodes of a particular node type in the cluster.
  /// [enabled] Whether a particular node type is enabled.
  /// [type] The instance type of a particular node type in the cluster.
  DomainClusterConfigNodeOptionNodeConfig({
    this.count,
    this.enabled,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DomainClusterConfigNodeOptionNodeConfig.fromMap(
      Map<String, dynamic> map) {
    return DomainClusterConfigNodeOptionNodeConfig(
      count: map['count'] == null ? null : map['count'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
