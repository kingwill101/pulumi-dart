// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_rule_properties_response.dart';

/// LoadBalancer Rules
class LoadBalancerRuleResponse {
  /// name of the load balancer rule
  final pulumi.Input<String> name;
  /// load balancer rule properties
  final pulumi.Input<LoadBalancerRulePropertiesResponse> properties;

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
      'properties': pulumi.Input.mapInputValue<LoadBalancerRulePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerRuleResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(LoadBalancerRulePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

