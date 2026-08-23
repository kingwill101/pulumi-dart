// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action.dart';
import 'agentcore_gateway_rule_condition.dart';
import 'agentcore_gateway_rule_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_gateway_rule_agentcore_gateway_rule_args_doc}
/// The set of arguments for AgentcoreGatewayRule.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_gateway_rule_agentcore_gateway_rule_args_doc}
class AgentcoreGatewayRuleArgs {
  /// One or two `action` blocks defining what happens when the rule's conditions match. See Action below.
  final pulumi.Input<List<AgentcoreGatewayRuleAction>>? actions;
  /// Up to two `condition` blocks that must all be satisfied for the rule's actions to apply. See Condition below.
  final pulumi.Input<List<AgentcoreGatewayRuleCondition>>? conditions;
  /// Description of the rule. Between 1 and 256 characters.
  final pulumi.Input<String>? description;
  /// Identifier of the gateway to attach the rule to.
  final pulumi.Input<String> gatewayIdentifier;
  /// Priority of the rule, between 1 and 1000000. Rules are evaluated in ascending order of priority.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentcoreGatewayRuleTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayRuleArgs].
  /// [actions] One or two `action` blocks defining what happens when the rule's conditions match. See Action below.
  /// [conditions] Up to two `condition` blocks that must all be satisfied for the rule's actions to apply. See Condition below.
  /// [description] Description of the rule. Between 1 and 256 characters.
  /// [gatewayIdentifier] Identifier of the gateway to attach the rule to.
  /// [priority] Priority of the rule, between 1 and 1000000. Rules are evaluated in ascending order of priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const AgentcoreGatewayRuleArgs({
    this.actions,
    this.conditions,
    this.description,
    required this.gatewayIdentifier,
    required this.priority,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'gatewayIdentifier': gatewayIdentifier,
      'priority': priority,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleArgs(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleAction>(guardedValue, (value) => AgentcoreGatewayRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleCondition>(guardedValue, (value) => AgentcoreGatewayRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIdentifier: pulumi.Input.fromValue(map['gatewayIdentifier'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
