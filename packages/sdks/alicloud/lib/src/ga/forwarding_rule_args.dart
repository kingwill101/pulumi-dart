// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_rule_action.dart';
import 'forwarding_rule_rule_condition.dart';

/// {@template pulumi_ga_forwarding_rule_forwarding_rule_args_doc}
/// The set of arguments for ForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_ga_forwarding_rule_forwarding_rule_args_doc}
class ForwardingRuleArgs {
  /// The ID of the Global Accelerator instance.
  final pulumi.Input<String> acceleratorId;

  /// Forwarding policy name. The length of the name is 2-128 English or Chinese characters. It must start with uppercase and lowercase letters or Chinese characters. It can contain numbers, half width period (.), underscores (_) And dash (-).
  final pulumi.Input<String>? forwardingRuleName;

  /// The ID of the listener.
  final pulumi.Input<String> listenerId;

  /// Forwarding policy priority.
  final pulumi.Input<int>? priority;

  /// Forward action. See `rule_actions` below.
  final pulumi.Input<List<ForwardingRuleRuleAction>> ruleActions;

  /// Forwarding condition list. See `rule_conditions` below.
  final pulumi.Input<List<ForwardingRuleRuleCondition>> ruleConditions;

  /// Creates a new [ForwardingRuleArgs].
  /// [acceleratorId] The ID of the Global Accelerator instance.
  /// [forwardingRuleName] Forwarding policy name. The length of the name is 2-128 English or Chinese characters. It must start with uppercase and lowercase letters or Chinese characters. It can contain numbers, half width period (.), underscores (_) And dash (-).
  /// [listenerId] The ID of the listener.
  /// [priority] Forwarding policy priority.
  /// [ruleActions] Forward action. See `rule_actions` below.
  /// [ruleConditions] Forwarding condition list. See `rule_conditions` below.
  ForwardingRuleArgs({
    required this.acceleratorId,
    this.forwardingRuleName,
    required this.listenerId,
    this.priority,
    required this.ruleActions,
    required this.ruleConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'forwardingRuleName': ?forwardingRuleName,
      'listenerId': listenerId,
      'priority': ?priority,
      'ruleActions':
          pulumi.Input.mapInputValue<
            List<ForwardingRuleRuleAction>,
            List<Map<String, dynamic>>
          >(
            ruleActions,
            (value) =>
                pulumi.Input.encodeList<
                  ForwardingRuleRuleAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleConditions':
          pulumi.Input.mapInputValue<
            List<ForwardingRuleRuleCondition>,
            List<Map<String, dynamic>>
          >(
            ruleConditions,
            (value) =>
                pulumi.Input.encodeList<
                  ForwardingRuleRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      forwardingRuleName: (() {
        final guardedValue = map['forwardingRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ruleActions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ForwardingRuleRuleAction>(
          map['ruleActions']!,
          (value) => ForwardingRuleRuleAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ruleConditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ForwardingRuleRuleCondition>(
          map['ruleConditions']!,
          (value) => ForwardingRuleRuleCondition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
