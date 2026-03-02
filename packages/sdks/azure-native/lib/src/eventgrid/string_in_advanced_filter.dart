// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StringIn Advanced Filter.
class StringInAdvancedFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'StringIn'.
  final pulumi.Input<String> operatorType;
  /// The set of filter values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [StringInAdvancedFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  StringInAdvancedFilter({
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

  factory StringInAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return StringInAdvancedFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

