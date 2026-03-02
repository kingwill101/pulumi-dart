// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BoolEquals Filter.
class BoolEqualsFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'BoolEquals'.
  final pulumi.Input<String> operatorType;
  /// The boolean filter value.
  final pulumi.Input<bool>? value;

  /// Creates a new [BoolEqualsFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The boolean filter value.
  BoolEqualsFilterResponse({
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

  factory BoolEqualsFilterResponse.fromMap(Map<String, dynamic> map) {
    return BoolEqualsFilterResponse(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operatorType: (map['operatorType'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as bool).input(),
    );
  }
}

