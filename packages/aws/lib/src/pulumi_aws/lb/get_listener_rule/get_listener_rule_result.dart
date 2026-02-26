// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_action/get_listener_rule_action.dart';
import '../get_listener_rule_condition/get_listener_rule_condition.dart';
import '../get_listener_rule_transform/get_listener_rule_transform.dart';

/// Result data returned by getListenerRule.
class GetListenerRuleResult {
  /// List of actions associated with the rule, sorted by <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span>.
  /// Detailed below.
  final List<GetListenerRuleAction>? actions;

  /// ARN of the target group.
  final String arn;

  /// Set of conditions associated with the rule.
  /// Detailed below.
  final List<GetListenerRuleCondition>? conditions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String listenerArn;
  final int priority;
  final String region;

  /// Tags assigned to the Listener Rule.
  final Map<String, String> tags;

  /// Block for transform to apply to requests that match this rule. Detailed below.
  final List<GetListenerRuleTransform>? transforms;

  GetListenerRuleResult({
    this.actions,
    required this.arn,
    this.conditions,
    required this.id,
    required this.listenerArn,
    required this.priority,
    required this.region,
    required this.tags,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] =
          Input.encodeList<GetListenerRuleAction, Map<String, dynamic>>(
              actionsValue, (value) => value.toMap());
    }
    map['arn'] = arn;
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<GetListenerRuleCondition, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['listenerArn'] = listenerArn;
    map['priority'] = priority;
    map['region'] = region;
    map['tags'] = tags;
    final transformsValue = transforms;
    if (transformsValue != null) {
      map['transforms'] =
          Input.encodeList<GetListenerRuleTransform, Map<String, dynamic>>(
              transformsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleResult.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleResult(
      actions: map['actions'] == null
          ? null
          : Input.decodeList<GetListenerRuleAction>(
              map['actions'],
              (value) => GetListenerRuleAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<GetListenerRuleCondition>(
              map['conditions'],
              (value) => GetListenerRuleCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      listenerArn: map['listenerArn'] as String,
      priority: map['priority'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transforms: map['transforms'] == null
          ? null
          : Input.decodeList<GetListenerRuleTransform>(
              map['transforms'],
              (value) => GetListenerRuleTransform.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
