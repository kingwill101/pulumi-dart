// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleActionRouteToTargetStaticRoute {
  /// Name of the gateway target this variant points to.
  final pulumi.Input<String> targetName;

  /// Creates a new [AgentcoreGatewayRuleActionRouteToTargetStaticRoute].
  /// [targetName] Name of the gateway target this variant points to.
  const AgentcoreGatewayRuleActionRouteToTargetStaticRoute({
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetName': targetName,
    };
  }

  factory AgentcoreGatewayRuleActionRouteToTargetStaticRoute.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionRouteToTargetStaticRoute(
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
    );
  }
}
