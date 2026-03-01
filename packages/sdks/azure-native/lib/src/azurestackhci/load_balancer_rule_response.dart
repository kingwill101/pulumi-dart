// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_rule_properties_response.dart';

/// LoadBalancer Rules
class LoadBalancerRuleResponse {
  /// name of the load balancer rule
  final String name;
  /// load balancer rule properties
  final LoadBalancerRulePropertiesResponse properties;

  /// Creates a new [LoadBalancerRuleResponse].
  /// [name] name of the load balancer rule
  /// [properties] load balancer rule properties
  LoadBalancerRuleResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory LoadBalancerRuleResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleResponse(
      name: map['name'] as String,
      properties: LoadBalancerRulePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

