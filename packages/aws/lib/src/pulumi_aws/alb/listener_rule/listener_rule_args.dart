// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action/listener_rule_action.dart';
import '../listener_rule_condition/listener_rule_condition.dart';
import '../listener_rule_transform/listener_rule_transform.dart';

/// The set of arguments for ListenerRule.
class ListenerRuleArgs {
  /// An Action block. Action blocks are documented below.
  final Input<List<ListenerRuleAction>> actions;

  /// A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  final Input<List<ListenerRuleCondition>> conditions;

  /// The ARN of the listener to which to attach the rule.
  final Input<String> listenerArn;

  /// The priority for the rule between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`50000`" pulumi-lang-dotnet="`50000`" pulumi-lang-go="`50000`" pulumi-lang-python="`50000`" pulumi-lang-yaml="`50000`" pulumi-lang-java="`50000`">`50000`</span>. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  final Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the <span pulumi-lang-nodejs="`transform`" pulumi-lang-dotnet="`Transform`" pulumi-lang-go="`transform`" pulumi-lang-python="`transform`" pulumi-lang-yaml="`transform`" pulumi-lang-java="`transform`">`transform`</span> block from the configuration.
  final Input<List<ListenerRuleTransform>>? transforms;

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
    map['actions'] = Input.mapInputValue<List<ListenerRuleAction>,
            List<Map<String, dynamic>>>(
        actions,
        (value) => Input.encodeList<ListenerRuleAction, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['conditions'] = Input.mapInputValue<List<ListenerRuleCondition>,
            List<Map<String, dynamic>>>(
        conditions,
        (value) =>
            Input.encodeList<ListenerRuleCondition, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
      map['transforms'] = Input.mapOptionalInputValue<
              List<ListenerRuleTransform>, List<Map<String, dynamic>>>(
          transformsValue,
          (value) =>
              Input.encodeList<ListenerRuleTransform, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListenerRuleArgs(
      actions: Input.asInput<List<ListenerRuleAction>>(map['actions']),
      conditions: Input.asInput<List<ListenerRuleCondition>>(map['conditions']),
      listenerArn: Input.asInput<String>(map['listenerArn']),
      priority: Input.asOptionalInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transforms:
          Input.asOptionalInput<List<ListenerRuleTransform>>(map['transforms']),
    );
  }
}
