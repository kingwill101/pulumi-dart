// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Condition to trigger an alert processing rule.
class ConditionResponse {
  /// Field for a given condition.
  final pulumi.Input<String>? field;
  /// Operator for a given condition.
  final pulumi.Input<String>? operator;
  /// List of values to match for a given condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionResponse].
  /// [field] Field for a given condition.
  /// [operator] Operator for a given condition.
  /// [values] List of values to match for a given condition.
  ConditionResponse({
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

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      field: map['field'] == null ? null : (map['field']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

