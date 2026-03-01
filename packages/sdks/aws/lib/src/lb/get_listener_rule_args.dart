// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_action.dart';
import 'get_listener_rule_condition.dart';
import 'get_listener_rule_transform.dart';

/// {@template pulumi_lb_get_listener_rule_get_listener_rule_args_doc}
/// Arguments for getListenerRule.
/// {@endtemplate}
/// {@macro pulumi_lb_get_listener_rule_get_listener_rule_args_doc}
class GetListenerRuleArgs {
  /// List of actions associated with the rule, sorted by `order`.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleAction>>? actions;
  /// ARN of the Listener Rule.
  /// Either `arn` or `listener_arn` must be set.
  final pulumi.Input<String>? arn;
  /// Set of conditions associated with the rule.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleCondition>>? conditions;
  /// ARN of the associated Listener.
  /// Either `arn` or `listener_arn` must be set.
  final pulumi.Input<String>? listenerArn;
  /// Priority of the Listener Rule within the Listener.
  /// Must be set if `listener_arn` is set, otherwise must not be set.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Block for transform to apply to requests that match this rule. Detailed below.
  final pulumi.Input<List<GetListenerRuleTransform>>? transforms;

  /// Creates a new [GetListenerRuleArgs].
  /// [actions] List of actions associated with the rule, sorted by `order`.
  /// [arn] ARN of the Listener Rule.
  /// [conditions] Set of conditions associated with the rule.
  /// [listenerArn] ARN of the associated Listener.
  /// [priority] Priority of the Listener Rule within the Listener.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transforms] Block for transform to apply to requests that match this rule. Detailed below.
  GetListenerRuleArgs({
    pulumi.Output<List<GetListenerRuleAction>>? actions,
    pulumi.Output<String>? arn,
    pulumi.Output<List<GetListenerRuleCondition>>? conditions,
    pulumi.Output<String>? listenerArn,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<List<GetListenerRuleTransform>>? transforms,
  }) :
      actions = pulumi.Input.asOptionalInput<List<GetListenerRuleAction>>(actions),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      conditions = pulumi.Input.asOptionalInput<List<GetListenerRuleCondition>>(conditions),
      listenerArn = pulumi.Input.asOptionalInput<String>(listenerArn),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      transforms = pulumi.Input.asOptionalInput<List<GetListenerRuleTransform>>(transforms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetListenerRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetListenerRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenerArn': ?listenerArn,
      'priority': ?priority,
      'region': ?region,
      'transforms': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleTransform>, List<Map<String, dynamic>>>(transforms, (value) => pulumi.Input.encodeList<GetListenerRuleTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleArgs(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<GetListenerRuleAction>>(pulumi.Input.decodeList<GetListenerRuleAction>(map['actions'], (value) => GetListenerRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<GetListenerRuleCondition>>(pulumi.Input.decodeList<GetListenerRuleCondition>(map['conditions'], (value) => GetListenerRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      listenerArn: map['listenerArn'] == null ? null : pulumi.Output.create<String>(map['listenerArn'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transforms: map['transforms'] == null ? null : pulumi.Output.create<List<GetListenerRuleTransform>>(pulumi.Input.decodeList<GetListenerRuleTransform>(map['transforms'], (value) => GetListenerRuleTransform.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

