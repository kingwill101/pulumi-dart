// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_condition.dart';
import 'listener_rule_transform.dart';

/// Input properties used for looking up and filtering ListenerRule resources.
class ListenerRuleState {
  /// An Action block. Action blocks are documented below.
  final pulumi.Input<List<ListenerRuleAction>>? actions;
  /// The ARN of the rule (matches `id`)
  final pulumi.Input<String>? arn;
  /// A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  final pulumi.Input<List<ListenerRuleCondition>>? conditions;
  /// The ARN of the listener to which to attach the rule.
  final pulumi.Input<String>? listenerArn;
  /// The priority for the rule between `1` and `50000`. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  final pulumi.Input<List<ListenerRuleTransform>>? transforms;

  /// Creates a new [ListenerRuleState].
  /// [actions] An Action block. Action blocks are documented below.
  /// [arn] The ARN of the rule (matches `id`)
  /// [conditions] A Condition block. Multiple condition blocks of different types can be set and all must be satisfied for the rule to match. Condition blocks are documented below.
  /// [listenerArn] The ARN of the listener to which to attach the rule.
  /// [priority] The priority for the rule between `1` and `50000`. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transforms] Configuration block that defines the transform to apply to requests matching this rule. See Transform Blocks below for more details. Once specified, to remove the transform from the rule, remove the `transform` block from the configuration.
  ListenerRuleState({
    pulumi.Output<List<ListenerRuleAction>>? actions,
    pulumi.Output<String>? arn,
    pulumi.Output<List<ListenerRuleCondition>>? conditions,
    pulumi.Output<String>? listenerArn,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ListenerRuleTransform>>? transforms,
  }) :
      actions = pulumi.Input.asOptionalInput<List<ListenerRuleAction>>(actions),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      conditions = pulumi.Input.asOptionalInput<List<ListenerRuleCondition>>(conditions),
      listenerArn = pulumi.Input.asOptionalInput<String>(listenerArn),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transforms = pulumi.Input.asOptionalInput<List<ListenerRuleTransform>>(transforms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ListenerRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ListenerRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ListenerRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ListenerRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenerArn': ?listenerArn,
      'priority': ?priority,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transforms': ?pulumi.Input.mapOptionalInputValue<List<ListenerRuleTransform>, List<Map<String, dynamic>>>(transforms, (value) => pulumi.Input.encodeList<ListenerRuleTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerRuleState.fromMap(Map<String, dynamic> map) {
    return ListenerRuleState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<ListenerRuleAction>>(pulumi.Input.decodeList<ListenerRuleAction>(map['actions'], (value) => ListenerRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<ListenerRuleCondition>>(pulumi.Input.decodeList<ListenerRuleCondition>(map['conditions'], (value) => ListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      listenerArn: map['listenerArn'] == null ? null : pulumi.Output.create<String>(map['listenerArn'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transforms: map['transforms'] == null ? null : pulumi.Output.create<List<ListenerRuleTransform>>(pulumi.Input.decodeList<ListenerRuleTransform>(map['transforms'], (value) => ListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

