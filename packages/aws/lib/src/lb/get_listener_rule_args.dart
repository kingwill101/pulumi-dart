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
    List<GetListenerRuleAction>? actions,
    String? arn,
    List<GetListenerRuleCondition>? conditions,
    String? listenerArn,
    int? priority,
    String? region,
    List<GetListenerRuleTransform>? transforms,
  })  : actions =
            pulumi.Input.asOptionalInput<List<GetListenerRuleAction>>(actions),
        arn = pulumi.Input.asOptionalInput<String>(arn),
        conditions =
            pulumi.Input.asOptionalInput<List<GetListenerRuleCondition>>(
                conditions),
        listenerArn = pulumi.Input.asOptionalInput<String>(listenerArn),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        region = pulumi.Input.asOptionalInput<String>(region),
        transforms =
            pulumi.Input.asOptionalInput<List<GetListenerRuleTransform>>(
                transforms);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = pulumi.Input.mapOptionalInputValue<
              List<GetListenerRuleAction>, List<Map<String, dynamic>>>(
          actionsValue,
          (value) => pulumi.Input.encodeList<GetListenerRuleAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<GetListenerRuleCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => pulumi.Input.encodeList<GetListenerRuleCondition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final listenerArnValue = listenerArn;
    if (listenerArnValue != null) {
      map['listenerArn'] = listenerArnValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final transformsValue = transforms;
    if (transformsValue != null) {
      map['transforms'] = pulumi.Input.mapOptionalInputValue<
              List<GetListenerRuleTransform>, List<Map<String, dynamic>>>(
          transformsValue,
          (value) => pulumi.Input.encodeList<GetListenerRuleTransform,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleArgs(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleAction>(
              map['actions'],
              (value) => GetListenerRuleAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : map['arn'] as String,
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleCondition>(
              map['conditions'],
              (value) => GetListenerRuleCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      listenerArn:
          map['listenerArn'] == null ? null : map['listenerArn'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      transforms: map['transforms'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleTransform>(
              map['transforms'],
              (value) => GetListenerRuleTransform.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
