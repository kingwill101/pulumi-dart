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
  ForwardingRuleState({
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
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      forwardingRuleId: map['forwardingRuleId'] == null ? null : (map['forwardingRuleId']! as String).input(),
      forwardingRuleName: map['forwardingRuleName'] == null ? null : (map['forwardingRuleName']! as String).input(),
      forwardingRuleStatus: map['forwardingRuleStatus'] == null ? null : (map['forwardingRuleStatus']! as String).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      ruleActions: map['ruleActions'] == null ? null : (pulumi.Input.decodeList<ForwardingRuleRuleAction>(map['ruleActions']!, (value) => ForwardingRuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleConditions: map['ruleConditions'] == null ? null : (pulumi.Input.decodeList<ForwardingRuleRuleCondition>(map['ruleConditions']!, (value) => ForwardingRuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

