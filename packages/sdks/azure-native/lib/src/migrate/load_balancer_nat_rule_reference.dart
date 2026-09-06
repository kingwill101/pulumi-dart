// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference to load balancer NAT rules.
class LoadBalancerNatRuleReference {
  /// Gets the name of the proxy resource on the target side.
  final pulumi.Input<String?>? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final pulumi.Input<String> sourceArmResourceId;

  /// Creates a new [LoadBalancerNatRuleReference].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  const LoadBalancerNatRuleReference({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory LoadBalancerNatRuleReference.fromMap(Map<String, dynamic> map) {
    return LoadBalancerNatRuleReference(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArmResourceId: pulumi.Input.fromValue(map['sourceArmResourceId'] as String),
    );
  }
}
