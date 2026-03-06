// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_rule_action.dart';
import 'forwarding_rule_rule_condition.dart';

/// Input properties used for looking up and filtering ForwardingRule resources.
class ForwardingRuleState {
  /// The ID of the Global Accelerator instance.
  final pulumi.Input<String>? acceleratorId;
  /// The ID of the Forwarding Rule.
  final pulumi.Input<String>? forwardingRuleId;
  /// Forwarding policy name. The length of the name is 2-128 English or Chinese characters. It must start with uppercase and lowercase letters or Chinese characters. It can contain numbers, half width period (.), underscores (_) And dash (-).
  final pulumi.Input<String>? forwardingRuleName;
  /// The status of the Forwarding Rule.
  final pulumi.Input<String>? forwardingRuleStatus;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// Forwarding policy priority.
  final pulumi.Input<int>? priority;
  /// Forward action. See `rule_actions` below.
  final pulumi.Input<List<ForwardingRuleRuleAction>>? ruleActions;
  /// Forwarding condition list. See `rule_conditions` below.
  final pulumi.Input<List<ForwardingRuleRuleCondition>>? ruleConditions;

  /// Creates a new [ForwardingRuleState].
  /// [acceleratorId] The ID of the Global Accelerator instance.
  /// [forwardingRuleId] The ID of the Forwarding Rule.
  /// [forwardingRuleName] Forwarding policy name. The length of the name is 2-128 English or Chinese characters. It must start with uppercase and lowercase letters or Chinese characters. It can contain numbers, half width period (.), underscores (_) And dash (-).
  /// [forwardingRuleStatus] The status of the Forwarding Rule.
  /// [listenerId] The ID of the listener.
  /// [priority] Forwarding policy priority.
  /// [ruleActions] Forward action. See `rule_actions` below.
  /// [ruleConditions] Forwarding condition list. See `rule_conditions` below.
  const ForwardingRuleState({
    this.acceleratorId,
    this.forwardingRuleId,
    this.forwardingRuleName,
    this.forwardingRuleStatus,
    this.listenerId,
    this.priority,
    this.ruleActions,
    this.ruleConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'forwardingRuleId': ?forwardingRuleId,
      'forwardingRuleName': ?forwardingRuleName,
      'forwardingRuleStatus': ?forwardingRuleStatus,
      'listenerId': ?listenerId,
      'priority': ?priority,
      'ruleActions': ?pulumi.Input.mapOptionalInputValue<List<ForwardingRuleRuleAction>, List<Map<String, dynamic>>>(ruleActions, (value) => pulumi.Input.encodeList<ForwardingRuleRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditions': ?pulumi.Input.mapOptionalInputValue<List<ForwardingRuleRuleCondition>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<ForwardingRuleRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ForwardingRuleState.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleState(
      acceleratorId: (() { final guardedValue = map['acceleratorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRuleId: (() { final guardedValue = map['forwardingRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRuleName: (() { final guardedValue = map['forwardingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRuleStatus: (() { final guardedValue = map['forwardingRuleStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleActions: (() { final guardedValue = map['ruleActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ForwardingRuleRuleAction>(guardedValue, (value) => ForwardingRuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleConditions: (() { final guardedValue = map['ruleConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ForwardingRuleRuleCondition>(guardedValue, (value) => ForwardingRuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

