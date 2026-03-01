// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_rule_properties.dart';

/// LoadBalancer Rules
class LoadBalancerRule {
  /// name of the load balancer rule
  final String name;
  /// load balancer rule properties
  final LoadBalancerRuleProperties properties;

  /// Creates a new [LoadBalancerRule].
  /// [name] name of the load balancer rule
  /// [properties] load balancer rule properties
  LoadBalancerRule({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory LoadBalancerRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRule(
      name: map['name'] as String,
      properties: LoadBalancerRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

