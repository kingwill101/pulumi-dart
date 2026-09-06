// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule that specifies a set of actions and conditions
class DeliveryRuleResponse {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final pulumi.Input<List<dynamic>> actions;
  /// A list of conditions that must be matched for the actions to be executed
  final pulumi.Input<List<dynamic>?>? conditions;
  /// Name of the rule
  final pulumi.Input<String?>? name;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final pulumi.Input<int> order;

  /// Creates a new [DeliveryRuleResponse].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [name] Name of the rule
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  const DeliveryRuleResponse({
    required this.actions,
    this.conditions,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'conditions': ?conditions,
      'name': ?name,
      'order': order,
    };
  }

  factory DeliveryRuleResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<dynamic>()),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['order'])),
    );
  }
}
