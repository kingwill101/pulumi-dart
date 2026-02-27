// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_rule_action/get_listener_rule_action.dart';
import '../get_listener_rule_condition/get_listener_rule_condition.dart';
import '../get_listener_rule_transform/get_listener_rule_transform.dart';

/// Arguments for getListenerRule.
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

  GetListenerRuleArgs({
    this.actions,
    this.arn,
    this.conditions,
    this.listenerArn,
    this.priority,
    this.region,
    this.transforms,
  });

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
      actions: pulumi.Input.asOptionalInput<List<GetListenerRuleAction>>(
          map['actions']),
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      conditions: pulumi.Input.asOptionalInput<List<GetListenerRuleCondition>>(
          map['conditions']),
      listenerArn: pulumi.Input.asOptionalInput<String>(map['listenerArn']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transforms: pulumi.Input.asOptionalInput<List<GetListenerRuleTransform>>(
          map['transforms']),
    );
  }
}
