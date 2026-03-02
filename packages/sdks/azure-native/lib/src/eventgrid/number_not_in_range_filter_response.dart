// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberNotInRange Filter.
class NumberNotInRangeFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberNotInRange'.
  final pulumi.Input<String> operatorType;
  /// The set of filter values.
  final pulumi.Input<List<List<double>>>? values;

  /// Creates a new [NumberNotInRangeFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  NumberNotInRangeFilterResponse({
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

  factory NumberNotInRangeFilterResponse.fromMap(Map<String, dynamic> map) {
    return NumberNotInRangeFilterResponse(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<List<double>>()).input(),
    );
  }
}

