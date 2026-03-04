// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BoolEquals Filter.
class BoolEqualsFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;

  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'BoolEquals'.
  final pulumi.Input<String> operatorType;

  /// The boolean filter value.
  final pulumi.Input<bool>? value;

  /// Creates a new [BoolEqualsFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The boolean filter value.
  BoolEqualsFilter({this.key, required this.operatorType, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'value': ?value,
    };
  }

  factory BoolEqualsFilter.fromMap(Map<String, dynamic> map) {
    return BoolEqualsFilter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatorType: pulumi.Input.fromValue(map['operatorType'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
