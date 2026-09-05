// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action_configuration_bundle.dart';
import 'agentcore_gateway_rule_action_route_to_target.dart';

class AgentcoreGatewayRuleAction {
  /// Reference to the configuration bundle for this variant.
  final pulumi.Input<AgentcoreGatewayRuleActionConfigurationBundle?>? configurationBundle;
  /// Route requests to a gateway target when the rule's conditions match. See routeToTarget below.
  final pulumi.Input<AgentcoreGatewayRuleActionRouteToTarget?>? routeToTarget;

  /// Creates a new [AgentcoreGatewayRuleAction].
  /// [configurationBundle] Reference to the configuration bundle for this variant.
  /// [routeToTarget] Route requests to a gateway target when the rule's conditions match. See routeToTarget below.
  const AgentcoreGatewayRuleAction({
    this.configurationBundle,
    this.routeToTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationBundle': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionConfigurationBundle, Map<String, dynamic>>(configurationBundle, (value) => value.toMap()),
      'routeToTarget': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleActionRouteToTarget, Map<String, dynamic>>(routeToTarget, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleAction.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleAction(
      configurationBundle: (() { final guardedValue = map['configurationBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionConfigurationBundle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routeToTarget: (() { final guardedValue = map['routeToTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleActionRouteToTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
