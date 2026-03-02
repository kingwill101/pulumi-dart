// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BoolEquals Advanced Filter.
class BoolEqualsAdvancedFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'BoolEquals'.
  final pulumi.Input<String> operatorType;
  /// The boolean filter value.
  final pulumi.Input<bool>? value;

  /// Creates a new [BoolEqualsAdvancedFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The boolean filter value.
  BoolEqualsAdvancedFilter({
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

  factory BoolEqualsAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return BoolEqualsAdvancedFilter(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as bool).input(),
    );
  }
}

