// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_rule_action/listener_rule_action.dart';
import '../listener_rule_condition/listener_rule_condition.dart';
import '../listener_rule_transform/listener_rule_transform.dart';

/// The set of arguments for ListenerRule.
class ListenerRuleArgs {
  /// An Action block. Action blocks are documented below.
  final pulumi.Input<List<ListenerRuleAction>> actions;

  /// A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  final pulumi.Input<List<ListenerRuleCondition>> conditions;

  /// The ARN of the listener to which to attach the rule.
  final pulumi.Input<String> listenerArn;

  /// The priority for the rule between `1` and `50000`. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  final pulumi.Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  final pulumi.Input<List<ListenerRuleTransform>>? transforms;

  ListenerRuleArgs({
    required this.actions,
    required this.conditions,
    required this.listenerArn,
    this.priority,
    this.region,
    this.tags,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.mapInputValue<List<ListenerRuleAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) =>
            pulumi.Input.encodeList<ListenerRuleAction, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['conditions'] = pulumi.Input.mapInputValue<List<ListenerRuleCondition>,
            List<Map<String, dynamic>>>(
        conditions,
        (value) => pulumi.Input.encodeList<ListenerRuleCondition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['listenerArn'] = listenerArn;
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transformsValue = transforms;
    if (transformsValue != null) {
      map['transforms'] = pulumi.Input.mapOptionalInputValue<
              List<ListenerRuleTransform>, List<Map<String, dynamic>>>(
          transformsValue,
          (value) => pulumi.Input.encodeList<ListenerRuleTransform,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListenerRuleArgs(
      actions: pulumi.Input.asInput<List<ListenerRuleAction>>(map['actions']),
      conditions:
          pulumi.Input.asInput<List<ListenerRuleCondition>>(map['conditions']),
      listenerArn: pulumi.Input.asInput<String>(map['listenerArn']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transforms: pulumi.Input.asOptionalInput<List<ListenerRuleTransform>>(
          map['transforms']),
    );
  }
}
