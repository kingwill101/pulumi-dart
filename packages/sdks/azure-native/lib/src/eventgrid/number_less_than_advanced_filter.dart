// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberLessThan Advanced Filter.
class NumberLessThanAdvancedFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberLessThan'.
  final pulumi.Input<String> operatorType;
  /// The filter value.
  final pulumi.Input<double>? value;

  /// Creates a new [NumberLessThanAdvancedFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The filter value.
  NumberLessThanAdvancedFilter({
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

  factory NumberLessThanAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return NumberLessThanAdvancedFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as double).input(),
    );
  }
}

