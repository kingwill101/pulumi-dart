// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_action.dart';
import 'routing_rule_condition.dart';

/// {@template pulumi_apigatewayv2_routing_rule_routing_rule_args_doc}
/// The set of arguments for RoutingRule.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_routing_rule_routing_rule_args_doc}
class RoutingRuleArgs {
  /// Configuration of resulting action based on matching routing rules condition. See below.
  final pulumi.Input<List<RoutingRuleAction>> actions;
  /// Conditions configuration. See below.
  final pulumi.Input<List<RoutingRuleCondition>> conditions;
  /// Domain name. Must be between 1 and 512 characters in length.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;
  /// The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RoutingRuleArgs].
  /// [actions] Configuration of resulting action based on matching routing rules condition. See below.
  /// [conditions] Conditions configuration. See below.
  /// [domainName] Domain name. Must be between 1 and 512 characters in length.
  /// [priority] The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RoutingRuleArgs({
    required pulumi.Output<List<RoutingRuleAction>> actions,
    required pulumi.Output<List<RoutingRuleCondition>> conditions,
    required pulumi.Output<String> domainName,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? region,
  }) :
      actions = pulumi.Input.asInput<List<RoutingRuleAction>>(actions),
      conditions = pulumi.Input.asInput<List<RoutingRuleCondition>>(conditions),
      domainName = pulumi.Input.asInput<String>(domainName),
      priority = pulumi.Input.asInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<RoutingRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<RoutingRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': pulumi.Input.mapInputValue<List<RoutingRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<RoutingRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': domainName,
      'priority': priority,
      'region': ?region,
    };
  }

  factory RoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return RoutingRuleArgs(
      actions: pulumi.Output.create<List<RoutingRuleAction>>(pulumi.Input.decodeList<RoutingRuleAction>(map['actions'], (value) => RoutingRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      conditions: pulumi.Output.create<List<RoutingRuleCondition>>(pulumi.Input.decodeList<RoutingRuleCondition>(map['conditions'], (value) => RoutingRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

