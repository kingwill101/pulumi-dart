// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberIn Filter.
class NumberInFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberIn'.
  final pulumi.Input<String> operatorType;
  /// The set of filter values.
  final pulumi.Input<List<double>>? values;

  /// Creates a new [NumberInFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  NumberInFilter({
    this.key,
    required this.operatorType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'values': ?values,
    };
  }

  factory NumberInFilter.fromMap(Map<String, dynamic> map) {
    return NumberInFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<double>()).input(),
    );
  }
}

