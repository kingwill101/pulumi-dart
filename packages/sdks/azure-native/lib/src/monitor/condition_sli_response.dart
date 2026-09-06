// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a filtering condition.
class ConditionSliResponse {
  /// Dimension name used in filtering.
  final pulumi.Input<String?>? dimensionName;
  /// Operator used in the filtering condition.
  final pulumi.Input<String> operator;
  /// Defines the sampling type.
  final pulumi.Input<String?>? samplingType;
  /// Scalar function applied for filtering.
  final pulumi.Input<String?>? scalarFunction;
  /// Value used in filtering. For most operators (eq, ne, lt, lte, gt, gte, startswith, notstartswith, contains, notcontains) this is a single value (for example "GetContosoUsers"). For the `in` and `notin` operators, multiple values must be joined by the delimiter `^^` (for example "east^^west^^north").
  final pulumi.Input<String> value;

  /// Creates a new [ConditionSliResponse].
  /// [dimensionName] Dimension name used in filtering.
  /// [operator] Operator used in the filtering condition.
  /// [samplingType] Defines the sampling type.
  /// [scalarFunction] Scalar function applied for filtering.
  /// [value] Value used in filtering. For most operators (eq, ne, lt, lte, gt, gte, startswith, notstartswith, contains, notcontains) this is a single value (for example "GetContosoUsers"). For the `in` and `notin` operators, multiple values must be joined by the delimiter `^^` (for example "east^^west^^north").
  const ConditionSliResponse({
    this.dimensionName,
    required this.operator,
    this.samplingType,
    this.scalarFunction,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionName': ?dimensionName,
      'operator': operator,
      'samplingType': ?samplingType,
      'scalarFunction': ?scalarFunction,
      'value': value,
    };
  }

  factory ConditionSliResponse.fromMap(Map<String, dynamic> map) {
    return ConditionSliResponse(
      dimensionName: (() { final guardedValue = map['dimensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      samplingType: (() { final guardedValue = map['samplingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalarFunction: (() { final guardedValue = map['scalarFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
