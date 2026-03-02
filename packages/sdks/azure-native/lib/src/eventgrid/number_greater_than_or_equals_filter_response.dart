// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NumberGreaterThanOrEquals Filter.
class NumberGreaterThanOrEqualsFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberGreaterThanOrEquals'.
  final pulumi.Input<String> operatorType;
  /// The filter value.
  final pulumi.Input<double>? value;

  /// Creates a new [NumberGreaterThanOrEqualsFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The filter value.
  NumberGreaterThanOrEqualsFilterResponse({
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

  factory NumberGreaterThanOrEqualsFilterResponse.fromMap(Map<String, dynamic> map) {
    return NumberGreaterThanOrEqualsFilterResponse(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as double).input(),
    );
  }
}

