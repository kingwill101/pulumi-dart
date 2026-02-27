// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_action/get_listener_rule_action.dart';
import '../get_listener_rule_condition/get_listener_rule_condition.dart';
import '../get_listener_rule_transform/get_listener_rule_transform.dart';

/// Arguments for getListenerRule.
class GetListenerRuleArgs {
  /// List of actions associated with the rule, sorted by `order`.
  /// Detailed below.
  final Input<List<GetListenerRuleAction>>? actions;

  /// ARN of the Listener Rule.
  /// Either `arn` or `listener_arn` must be set.
  final Input<String>? arn;

  /// Set of conditions associated with the rule.
  /// Detailed below.
  final Input<List<GetListenerRuleCondition>>? conditions;

  /// ARN of the associated Listener.
  /// Either `arn` or `listener_arn` must be set.
  final Input<String>? listenerArn;

  /// Priority of the Listener Rule within the Listener.
  /// Must be set if `listener_arn` is set, otherwise must not be set.
  final Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Block for transform to apply to requests that match this rule. Detailed below.
  final Input<List<GetListenerRuleTransform>>? transforms;

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
      map['actions'] = Input.mapOptionalInputValue<List<GetListenerRuleAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) =>
              Input.encodeList<GetListenerRuleAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.mapOptionalInputValue<
              List<GetListenerRuleCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) =>
              Input.encodeList<GetListenerRuleCondition, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['transforms'] = Input.mapOptionalInputValue<
              List<GetListenerRuleTransform>, List<Map<String, dynamic>>>(
          transformsValue,
          (value) =>
              Input.encodeList<GetListenerRuleTransform, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetListenerRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleArgs(
      actions:
          Input.asOptionalInput<List<GetListenerRuleAction>>(map['actions']),
      arn: Input.asOptionalInput<String>(map['arn']),
      conditions: Input.asOptionalInput<List<GetListenerRuleCondition>>(
          map['conditions']),
      listenerArn: Input.asOptionalInput<String>(map['listenerArn']),
      priority: Input.asOptionalInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      transforms: Input.asOptionalInput<List<GetListenerRuleTransform>>(
          map['transforms']),
    );
  }
}
