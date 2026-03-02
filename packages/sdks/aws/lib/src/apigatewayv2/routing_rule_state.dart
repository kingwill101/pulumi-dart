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
    this.actions,
    this.conditions,
    this.domainName,
    this.priority,
    this.region,
    this.routingRuleArn,
    this.routingRuleId,
  });

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
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<RoutingRuleAction>(map['actions'], (value) => RoutingRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<RoutingRuleCondition>(map['conditions'], (value) => RoutingRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routingRuleArn: map['routingRuleArn'] == null ? null : (map['routingRuleArn'] as String).input(),
      routingRuleId: map['routingRuleId'] == null ? null : (map['routingRuleId'] as String).input(),
    );
  }
}

