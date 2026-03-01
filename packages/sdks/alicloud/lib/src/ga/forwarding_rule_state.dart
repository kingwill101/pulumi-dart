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
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? forwardingRuleId,
    pulumi.Output<String>? forwardingRuleName,
    pulumi.Output<String>? forwardingRuleStatus,
    pulumi.Output<String>? listenerId,
    pulumi.Output<int>? priority,
    pulumi.Output<List<ForwardingRuleRuleAction>>? ruleActions,
    pulumi.Output<List<ForwardingRuleRuleCondition>>? ruleConditions,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      forwardingRuleId = pulumi.Input.asOptionalInput<String>(forwardingRuleId),
      forwardingRuleName = pulumi.Input.asOptionalInput<String>(forwardingRuleName),
      forwardingRuleStatus = pulumi.Input.asOptionalInput<String>(forwardingRuleStatus),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      ruleActions = pulumi.Input.asOptionalInput<List<ForwardingRuleRuleAction>>(ruleActions),
      ruleConditions = pulumi.Input.asOptionalInput<List<ForwardingRuleRuleCondition>>(ruleConditions);

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
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      forwardingRuleId: map['forwardingRuleId'] == null ? null : pulumi.Output.create<String>(map['forwardingRuleId'] as String),
      forwardingRuleName: map['forwardingRuleName'] == null ? null : pulumi.Output.create<String>(map['forwardingRuleName'] as String),
      forwardingRuleStatus: map['forwardingRuleStatus'] == null ? null : pulumi.Output.create<String>(map['forwardingRuleStatus'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      ruleActions: map['ruleActions'] == null ? null : pulumi.Output.create<List<ForwardingRuleRuleAction>>(pulumi.Input.decodeList<ForwardingRuleRuleAction>(map['ruleActions'], (value) => ForwardingRuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      ruleConditions: map['ruleConditions'] == null ? null : pulumi.Output.create<List<ForwardingRuleRuleCondition>>(pulumi.Input.decodeList<ForwardingRuleRuleCondition>(map['ruleConditions'], (value) => ForwardingRuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

