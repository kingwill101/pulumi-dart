// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../routing_rule_action/routing_rule_action.dart';
import '../routing_rule_condition/routing_rule_condition.dart';

/// The set of arguments for RoutingRule.
class RoutingRuleArgs {
  /// Configuration of resulting action based on matching routing rules condition. See below.
  final Input<List<RoutingRuleAction>> actions;

  /// Conditions configuration. See below.
  final Input<List<RoutingRuleCondition>> conditions;

  /// Domain name. Must be between 1 and 512 characters in length.
  ///
  /// The following arguments are optional:
  final Input<String> domainName;

  /// The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  final Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  RoutingRuleArgs({
    required this.actions,
    required this.conditions,
    required this.domainName,
    required this.priority,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.mapInputValue<List<RoutingRuleAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) => Input.encodeList<RoutingRuleAction, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['conditions'] = Input.mapInputValue<List<RoutingRuleCondition>,
            List<Map<String, dynamic>>>(
        conditions,
        (value) => Input.encodeList<RoutingRuleCondition, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['domainName'] = domainName;
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return RoutingRuleArgs(
      actions: Input.asInput<List<RoutingRuleAction>>(map['actions']),
      conditions: Input.asInput<List<RoutingRuleCondition>>(map['conditions']),
      domainName: Input.asInput<String>(map['domainName']),
      priority: Input.asInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
