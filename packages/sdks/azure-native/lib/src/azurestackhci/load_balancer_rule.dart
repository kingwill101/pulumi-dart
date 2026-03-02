// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_rule_properties.dart';

/// LoadBalancer Rules
class LoadBalancerRule {
  /// name of the load balancer rule
  final pulumi.Input<String> name;
  /// load balancer rule properties
  final pulumi.Input<LoadBalancerRuleProperties> properties;

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
      'properties': pulumi.Input.mapInputValue<LoadBalancerRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRule(
      name: (map['name'] as String).input(),
      properties: (LoadBalancerRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

