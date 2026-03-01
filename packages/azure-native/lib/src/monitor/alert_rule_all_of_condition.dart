// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_any_of_or_leaf_condition.dart';

/// An Activity Log Alert rule condition that is met when all its member conditions are met.
class AlertRuleAllOfCondition {
  /// The list of Activity Log Alert rule conditions.
  final List<AlertRuleAnyOfOrLeafCondition> allOf;

  /// Creates a new [AlertRuleAllOfCondition].
  /// [allOf] The list of Activity Log Alert rule conditions.
  AlertRuleAllOfCondition({
    required this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': pulumi.Input.encodeList<AlertRuleAnyOfOrLeafCondition, Map<String, dynamic>>(allOf, (value) => value.toMap()),
    };
  }

  factory AlertRuleAllOfCondition.fromMap(Map<String, dynamic> map) {
    return AlertRuleAllOfCondition(
      allOf: pulumi.Input.decodeList<AlertRuleAnyOfOrLeafCondition>(map['allOf'], (value) => AlertRuleAnyOfOrLeafCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

