// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action.dart';
import 'agentcore_gateway_rule_condition.dart';
import 'agentcore_gateway_rule_system.dart';
import 'agentcore_gateway_rule_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreGatewayRule resources.
class AgentcoreGatewayRuleState {
  /// One or two `action` blocks defining what happens when the rule's conditions match. See Action below.
  final pulumi.Input<List<AgentcoreGatewayRuleAction>>? actions;
  /// Up to two `condition` blocks that must all be satisfied for the rule's actions to apply. See Condition below.
  final pulumi.Input<List<AgentcoreGatewayRuleCondition>>? conditions;
  /// Description of the rule. Between 1 and 256 characters.
  final pulumi.Input<String>? description;
  /// ARN of the gateway that owns the rule.
  final pulumi.Input<String>? gatewayArn;
  /// Identifier of the gateway to attach the rule to.
  final pulumi.Input<String>? gatewayIdentifier;
  /// Priority of the rule, between 1 and 1000000. Rules are evaluated in ascending order of priority.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the rule.
  final pulumi.Input<String>? ruleId;
  /// Present when the rule is system-managed. See `system` Block below.
  final pulumi.Input<List<AgentcoreGatewayRuleSystem>>? systems;
  final pulumi.Input<AgentcoreGatewayRuleTimeouts>? timeouts;

  /// Creates a new [AgentcoreGatewayRuleState].
  /// [actions] One or two `action` blocks defining what happens when the rule's conditions match. See Action below.
  /// [conditions] Up to two `condition` blocks that must all be satisfied for the rule's actions to apply. See Condition below.
  /// [description] Description of the rule. Between 1 and 256 characters.
  /// [gatewayArn] ARN of the gateway that owns the rule.
  /// [gatewayIdentifier] Identifier of the gateway to attach the rule to.
  /// [priority] Priority of the rule, between 1 and 1000000. Rules are evaluated in ascending order of priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleId] Identifier of the rule.
  /// [systems] Present when the rule is system-managed. See `system` Block below.
  /// [timeouts] Optional.
  const AgentcoreGatewayRuleState({
    this.actions,
    this.conditions,
    this.description,
    this.gatewayArn,
    this.gatewayIdentifier,
    this.priority,
    this.region,
    this.ruleId,
    this.systems,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'gatewayArn': ?gatewayArn,
      'gatewayIdentifier': ?gatewayIdentifier,
      'priority': ?priority,
      'region': ?region,
      'ruleId': ?ruleId,
      'systems': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayRuleSystem>, List<Map<String, dynamic>>>(systems, (value) => pulumi.Input.encodeList<AgentcoreGatewayRuleSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayRuleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayRuleState.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleState(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleAction>(guardedValue, (value) => AgentcoreGatewayRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleCondition>(guardedValue, (value) => AgentcoreGatewayRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayArn: (() { final guardedValue = map['gatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIdentifier: (() { final guardedValue = map['gatewayIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systems: (() { final guardedValue = map['systems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayRuleSystem>(guardedValue, (value) => AgentcoreGatewayRuleSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
