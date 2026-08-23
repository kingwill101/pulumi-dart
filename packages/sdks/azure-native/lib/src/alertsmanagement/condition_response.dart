// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// condition to trigger an action rule
class ConditionResponse {
  /// operator for a given condition
  final pulumi.Input<String>? operator;
  /// list of values to match for a given condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ConditionResponse].
  /// [operator] operator for a given condition
  /// [values] list of values to match for a given condition.
  const ConditionResponse({
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
