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
      count: (map['count'] as int).input(),
      enabled: (map['enabled'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

