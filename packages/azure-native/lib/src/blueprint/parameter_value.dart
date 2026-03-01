// ignore_for_file: unused_element, unnecessary_cast

import 'secret_value_reference.dart';

/// Value for the specified parameter. Can be either 'value' or 'reference' but not both.
class ParameterValue {
  /// Parameter value as reference type.
  final SecretValueReference? reference;
  /// Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  final dynamic value;

  /// Creates a new [ParameterValue].
  /// [reference] Parameter value as reference type.
  /// [value] Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  ParameterValue({
    this.reference,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference == null ? null : reference!.toMap(),
      'value': ?value,
    };
  }

  factory ParameterValue.fromMap(Map<String, dynamic> map) {
    return ParameterValue(
      reference: map['reference'] == null ? null : SecretValueReference.fromMap((map['reference'] as Map).cast<String, dynamic>()),
      value: map['value'] == null ? null : map['value'],
    );
  }
}

