// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_action/get_listener_rule_action.dart';
import '../get_listener_rule_condition/get_listener_rule_condition.dart';
import '../get_listener_rule_transform/get_listener_rule_transform.dart';

/// Arguments for getListenerRule.
class GetListenerRuleArgs {
  /// List of actions associated with the rule, sorted by <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span>.
  /// Detailed below.
  final Input<List<GetListenerRuleAction>>? actions;

  /// ARN of the Listener Rule.
  /// Either <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> or <span pulumi-lang-nodejs="`listenerArn`" pulumi-lang-dotnet="`ListenerArn`" pulumi-lang-go="`listenerArn`" pulumi-lang-python="`listener_arn`" pulumi-lang-yaml="`listenerArn`" pulumi-lang-java="`listenerArn`">`listener_arn`</span> must be set.
  final Input<String>? arn;

  /// Set of conditions associated with the rule.
  /// Detailed below.
  final Input<List<GetListenerRuleCondition>>? conditions;

  /// ARN of the associated Listener.
  /// Either <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> or <span pulumi-lang-nodejs="`listenerArn`" pulumi-lang-dotnet="`ListenerArn`" pulumi-lang-go="`listenerArn`" pulumi-lang-python="`listener_arn`" pulumi-lang-yaml="`listenerArn`" pulumi-lang-java="`listenerArn`">`listener_arn`</span> must be set.
  final Input<String>? listenerArn;

  /// Priority of the Listener Rule within the Listener.
  /// Must be set if <span pulumi-lang-nodejs="`listenerArn`" pulumi-lang-dotnet="`ListenerArn`" pulumi-lang-go="`listenerArn`" pulumi-lang-python="`listener_arn`" pulumi-lang-yaml="`listenerArn`" pulumi-lang-java="`listenerArn`">`listener_arn`</span> is set, otherwise must not be set.
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
