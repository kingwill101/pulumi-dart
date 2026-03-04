// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_cache_expiration_action.dart';
import 'delivery_rule_client_port_condition.dart';

/// A rule that specifies a set of actions and conditions
class DeliveryRule {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final pulumi.Input<List<DeliveryRuleCacheExpirationAction>> actions;

  /// A list of conditions that must be matched for the actions to be executed
  final pulumi.Input<List<DeliveryRuleClientPortCondition>>? conditions;

  /// Name of the rule
  final pulumi.Input<String>? name;

  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final pulumi.Input<int> order;

  /// Creates a new [DeliveryRule].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [name] Name of the rule
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  DeliveryRule({
    required this.actions,
    this.conditions,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<DeliveryRuleCacheExpirationAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  DeliveryRuleCacheExpirationAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeliveryRuleClientPortCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  DeliveryRuleClientPortCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'order': order,
    };
  }

  factory DeliveryRule.fromMap(Map<String, dynamic> map) {
    return DeliveryRule(
      actions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DeliveryRuleCacheExpirationAction>(
          map['actions']!,
          (value) => DeliveryRuleCacheExpirationAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeliveryRuleClientPortCondition>(
            guardedValue,
            (value) => DeliveryRuleClientPortCondition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      order: pulumi.Input.fromValue(map['order'] as int),
    );
  }
}
