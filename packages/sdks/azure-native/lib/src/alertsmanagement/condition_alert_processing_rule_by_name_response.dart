// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Condition to trigger an alert processing rule.
class ConditionAlertProcessingRuleByNameResponse {
  /// Field for a given condition.
  final pulumi.Input<String>? field;
  /// Operator for a given condition.
  final pulumi.Input<String>? operator;
  /// List of values to match for a given condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionAlertProcessingRuleByNameResponse].
  /// [field] Field for a given condition.
  /// [operator] Operator for a given condition.
  /// [values] List of values to match for a given condition.
  const ConditionAlertProcessingRuleByNameResponse({
    this.field,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory ConditionAlertProcessingRuleByNameResponse.fromMap(Map<String, dynamic> map) {
    return ConditionAlertProcessingRuleByNameResponse(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
