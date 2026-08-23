// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainClusterConfigNodeOptionNodeConfig {
  /// Number of nodes of a particular node type in the cluster.
  final pulumi.Input<int> count;
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// The instance type of a particular node type in the cluster.
  final pulumi.Input<String> type;

  /// Creates a new [GetDomainClusterConfigNodeOptionNodeConfig].
  /// [count] Number of nodes of a particular node type in the cluster.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [type] The instance type of a particular node type in the cluster.
  const GetDomainClusterConfigNodeOptionNodeConfig({
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
      count: pulumi.Input.fromValue(map['count'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
