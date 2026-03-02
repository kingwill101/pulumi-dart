// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_cache_expiration_action_response.dart';
import 'delivery_rule_client_port_condition_response.dart';

/// A rule that specifies a set of actions and conditions
class DeliveryRuleResponse {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final pulumi.Input<List<DeliveryRuleCacheExpirationActionResponse>> actions;
  /// A list of conditions that must be matched for the actions to be executed
  final pulumi.Input<List<DeliveryRuleClientPortConditionResponse>>? conditions;
  /// Name of the rule
  final pulumi.Input<String>? name;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final pulumi.Input<int> order;

  /// Creates a new [DeliveryRuleResponse].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [name] Name of the rule
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  DeliveryRuleResponse({
    required this.actions,
    this.conditions,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<DeliveryRuleCacheExpirationActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<DeliveryRuleCacheExpirationActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryRuleClientPortConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DeliveryRuleClientPortConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'order': order,
    };
  }

  factory DeliveryRuleResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleResponse(
      actions: (pulumi.Input.decodeList<DeliveryRuleCacheExpirationActionResponse>(map['actions'], (value) => DeliveryRuleCacheExpirationActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<DeliveryRuleClientPortConditionResponse>(map['conditions']!, (value) => DeliveryRuleClientPortConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      order: (map['order'] as int).input(),
    );
  }
}

