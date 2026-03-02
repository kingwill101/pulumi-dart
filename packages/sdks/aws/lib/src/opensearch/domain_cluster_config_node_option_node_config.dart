// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainClusterConfigNodeOptionNodeConfig {
  /// Number of nodes of a particular node type in the cluster.
  final pulumi.Input<int>? count;
  /// Whether a particular node type is enabled.
  final pulumi.Input<bool>? enabled;
  /// The instance type of a particular node type in the cluster.
  final pulumi.Input<String>? type;

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
    return <String, dynamic>{
      'count': ?count,
      'enabled': ?enabled,
      'type': ?type,
    };
  }

  factory DomainClusterConfigNodeOptionNodeConfig.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigNodeOptionNodeConfig(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

