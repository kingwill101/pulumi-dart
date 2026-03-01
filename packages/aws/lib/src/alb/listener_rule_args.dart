// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_condition.dart';
import 'listener_rule_transform.dart';

/// {@template pulumi_alb_listener_rule_listener_rule_args_doc}
/// The set of arguments for ListenerRule.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_rule_listener_rule_args_doc}
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

  /// Creates a new [ListenerRuleArgs].
  /// [actions] An Action block. Action blocks are documented below.
  /// [conditions] A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  /// [listenerArn] The ARN of the listener to which to attach the rule.
  /// [priority] The priority for the rule between `1` and `50000`. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transforms] Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  ListenerRuleArgs({
    required List<ListenerRuleAction> actions,
    required List<ListenerRuleCondition> conditions,
    required String listenerArn,
    int? priority,
    String? region,
    Map<String, String>? tags,
    List<ListenerRuleTransform>? transforms,
  }) : actions = pulumi.Input.asInput<List<ListenerRuleAction>>(actions),
       conditions = pulumi.Input.asInput<List<ListenerRuleCondition>>(
         conditions,
       ),
       listenerArn = pulumi.Input.asInput<String>(listenerArn),
       priority = pulumi.Input.asOptionalInput<int>(priority),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transforms = pulumi.Input.asOptionalInput<List<ListenerRuleTransform>>(
         transforms,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<ListenerRuleAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerRuleAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'conditions':
          pulumi.Input.mapInputValue<
            List<ListenerRuleCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'listenerArn': listenerArn,
      'priority': ?priority,
      'region': ?region,
      'tags': ?tags,
      'transforms':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListenerRuleTransform>,
            List<Map<String, dynamic>>
          >(
            transforms,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerRuleTransform,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return ListenerRuleArgs(
      actions: pulumi.Input.decodeList<ListenerRuleAction>(
        map['actions'],
        (value) =>
            ListenerRuleAction.fromMap((value as Map).cast<String, dynamic>()),
      ),
      conditions: pulumi.Input.decodeList<ListenerRuleCondition>(
        map['conditions'],
        (value) => ListenerRuleCondition.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      listenerArn: map['listenerArn'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transforms: map['transforms'] == null
          ? null
          : pulumi.Input.decodeList<ListenerRuleTransform>(
              map['transforms'],
              (value) => ListenerRuleTransform.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
