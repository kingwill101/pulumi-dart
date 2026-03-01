// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_action.dart';
import 'rule_rule_condition.dart';

/// {@template pulumi_alb_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_alb_rule_rule_args_doc}
class RuleArgs {
  /// The direction to which the forwarding rule is applied. Default value: `Request`. Valid values:
  /// - `Request`: The forwarding rule is applied to the client requests received by ALB.
  /// - `Response`: The forwarding rule is applied to the responses returned by backend servers.
  final pulumi.Input<String>? direction;
  /// Specifies whether to precheck this request.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the listener to which the forwarding rule belongs.
  final pulumi.Input<String> listenerId;
  /// The priority of the rule. Valid values: `1` to `10000`. A smaller value indicates a higher priority. **Note*:* The priority of each rule within the same listener must be unique.
  final pulumi.Input<int> priority;
  /// The actions of the forwarding rules. See `rule_actions` below.
  final pulumi.Input<List<RuleRuleAction>> ruleActions;
  /// The conditions of the forwarding rule. See `rule_conditions` below.
  final pulumi.Input<List<RuleRuleCondition>> ruleConditions;
  /// The name of the forwarding rule. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String> ruleName;

  /// Creates a new [RuleArgs].
  /// [direction] The direction to which the forwarding rule is applied. Default value: `Request`. Valid values:
  /// [dryRun] Specifies whether to precheck this request.
  /// [listenerId] The ID of the listener to which the forwarding rule belongs.
  /// [priority] The priority of the rule. Valid values: `1` to `10000`. A smaller value indicates a higher priority. **Note*:* The priority of each rule within the same listener must be unique.
  /// [ruleActions] The actions of the forwarding rules. See `rule_actions` below.
  /// [ruleConditions] The conditions of the forwarding rule. See `rule_conditions` below.
  /// [ruleName] The name of the forwarding rule. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  RuleArgs({
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<String> listenerId,
    required pulumi.Output<int> priority,
    required pulumi.Output<List<RuleRuleAction>> ruleActions,
    required pulumi.Output<List<RuleRuleCondition>> ruleConditions,
    required pulumi.Output<String> ruleName,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      priority = pulumi.Input.asInput<int>(priority),
      ruleActions = pulumi.Input.asInput<List<RuleRuleAction>>(ruleActions),
      ruleConditions = pulumi.Input.asInput<List<RuleRuleCondition>>(ruleConditions),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'dryRun': ?dryRun,
      'listenerId': listenerId,
      'priority': priority,
      'ruleActions': pulumi.Input.mapInputValue<List<RuleRuleAction>, List<Map<String, dynamic>>>(ruleActions, (value) => pulumi.Input.encodeList<RuleRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditions': pulumi.Input.mapInputValue<List<RuleRuleCondition>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<RuleRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ruleName,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      listenerId: pulumi.Output.create<String>(map['listenerId'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      ruleActions: pulumi.Output.create<List<RuleRuleAction>>(pulumi.Input.decodeList<RuleRuleAction>(map['ruleActions'], (value) => RuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      ruleConditions: pulumi.Output.create<List<RuleRuleCondition>>(pulumi.Input.decodeList<RuleRuleCondition>(map['ruleConditions'], (value) => RuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

