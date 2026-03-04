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

  factory DomainClusterConfigNodeOptionNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainClusterConfigNodeOptionNodeConfig(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
