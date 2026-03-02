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
  NumberInRangeFilter({
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

  factory NumberInRangeFilter.fromMap(Map<String, dynamic> map) {
    return NumberInRangeFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<List<double>>()).input(),
    );
  }
}

