// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_action.dart';
import 'get_listener_rule_condition.dart';
import 'get_listener_rule_transform.dart';

/// Result data returned by getListenerRule.
class GetListenerRuleResult {
  /// List of actions associated with the rule, sorted by `order`.
  /// Detailed below.
  final List<GetListenerRuleAction>? actions;
  /// ARN of the target group.
  final String arn;
  /// Set of conditions associated with the rule.
  /// Detailed below.
  final List<GetListenerRuleCondition>? conditions;
  final String listenerArn;
  final int priority;
  final String region;
  /// Tags assigned to the Listener Rule.
  final Map<String, String> tags;
  /// Block for transform to apply to requests that match this rule. Detailed below.
  final List<GetListenerRuleTransform>? transforms;

  /// Creates a new [GetListenerRuleResult].
  /// [actions] List of actions associated with the rule, sorted by `order`.
  /// [arn] ARN of the target group.
  /// [conditions] Set of conditions associated with the rule.
  /// [listenerArn] Required.
  /// [priority] Required.
  /// [region] Required.
  /// [tags] Tags assigned to the Listener Rule.
  /// [transforms] Block for transform to apply to requests that match this rule. Detailed below.
  const GetListenerRuleResult({
    this.actions,
    required this.arn,
    this.conditions,
    required this.listenerArn,
    required this.priority,
    required this.region,
    required this.tags,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerRuleAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': arn,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerRuleCondition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'listenerArn': listenerArn,
      'priority': priority,
      'region': region,
      'tags': tags,
      'transforms': ?(() { final guardedValue = transforms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerRuleTransform, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetListenerRuleResult.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerRuleAction>(guardedValue, (value) => GetListenerRuleAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: map['arn'] as String,
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerRuleCondition>(guardedValue, (value) => GetListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>())); })(),
      listenerArn: map['listenerArn'] as String,
      priority: map['priority'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerRuleTransform>(guardedValue, (value) => GetListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
