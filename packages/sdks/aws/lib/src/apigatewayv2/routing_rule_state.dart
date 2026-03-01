// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_action.dart';
import 'routing_rule_condition.dart';

/// Input properties used for looking up and filtering RoutingRule resources.
class RoutingRuleState {
  /// Configuration of resulting action based on matching routing rules condition. See below.
  final pulumi.Input<List<RoutingRuleAction>>? actions;
  /// Conditions configuration. See below.
  final pulumi.Input<List<RoutingRuleCondition>>? conditions;
  /// Domain name. Must be between 1 and 512 characters in length.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? domainName;
  /// The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the Routing Rule.
  final pulumi.Input<String>? routingRuleArn;
  /// ID of the Routing Rule.
  final pulumi.Input<String>? routingRuleId;

  /// Creates a new [RoutingRuleState].
  /// [actions] Configuration of resulting action based on matching routing rules condition. See below.
  /// [conditions] Conditions configuration. See below.
  /// [domainName] Domain name. Must be between 1 and 512 characters in length.
  /// [priority] The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingRuleArn] ARN of the Routing Rule.
  /// [routingRuleId] ID of the Routing Rule.
  RoutingRuleState({
    pulumi.Output<List<RoutingRuleAction>>? actions,
    pulumi.Output<List<RoutingRuleCondition>>? conditions,
    pulumi.Output<String>? domainName,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routingRuleArn,
    pulumi.Output<String>? routingRuleId,
  }) :
      actions = pulumi.Input.asOptionalInput<List<RoutingRuleAction>>(actions),
      conditions = pulumi.Input.asOptionalInput<List<RoutingRuleCondition>>(conditions),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingRuleArn = pulumi.Input.asOptionalInput<String>(routingRuleArn),
      routingRuleId = pulumi.Input.asOptionalInput<String>(routingRuleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<RoutingRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<RoutingRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<RoutingRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<RoutingRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': ?domainName,
      'priority': ?priority,
      'region': ?region,
      'routingRuleArn': ?routingRuleArn,
      'routingRuleId': ?routingRuleId,
    };
  }

  factory RoutingRuleState.fromMap(Map<String, dynamic> map) {
    return RoutingRuleState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<RoutingRuleAction>>(pulumi.Input.decodeList<RoutingRuleAction>(map['actions'], (value) => RoutingRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<RoutingRuleCondition>>(pulumi.Input.decodeList<RoutingRuleCondition>(map['conditions'], (value) => RoutingRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingRuleArn: map['routingRuleArn'] == null ? null : pulumi.Output.create<String>(map['routingRuleArn'] as String),
      routingRuleId: map['routingRuleId'] == null ? null : pulumi.Output.create<String>(map['routingRuleId'] as String),
    );
  }
}

