// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberInRange Filter.
class NumberInRangeFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;

  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberInRange'.
  final pulumi.Input<String> operatorType;

  /// The set of filter values.
  final pulumi.Input<List<List<double>>>? values;

  /// Creates a new [NumberInRangeFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  NumberInRangeFilter({this.key, required this.operatorType, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'values': ?values,
    };
  }

  factory NumberInRangeFilter.fromMap(Map<String, dynamic> map) {
    return NumberInRangeFilter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatorType: pulumi.Input.fromValue(map['operatorType'] as String),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<List<double>>(),
        );
      })(),
    );
  }
}
