// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberGreaterThanOrEquals Advanced Filter.
class NumberGreaterThanOrEqualsAdvancedFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberGreaterThanOrEquals'.
  final pulumi.Input<String> operatorType;
  /// The filter value.
  final pulumi.Input<double>? value;

  /// Creates a new [NumberGreaterThanOrEqualsAdvancedFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The filter value.
  const NumberGreaterThanOrEqualsAdvancedFilterResponse({
    this.key,
    required this.operatorType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'value': ?value,
    };
  }

  factory NumberGreaterThanOrEqualsAdvancedFilterResponse.fromMap(Map<String, dynamic> map) {
    return NumberGreaterThanOrEqualsAdvancedFilterResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorType: pulumi.Input.fromValue(map['operatorType'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
