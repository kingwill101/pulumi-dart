// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_value_reference.dart';

/// Value for the specified parameter. Can be either 'value' or 'reference' but not both.
class ParameterValue {
  /// Parameter value as reference type.
  final pulumi.Input<SecretValueReference>? reference;

  /// Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ParameterValue].
  /// [reference] Parameter value as reference type.
  /// [value] Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  ParameterValue({this.reference, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference':
          ?pulumi.Input.mapOptionalInputValue<
            SecretValueReference,
            Map<String, dynamic>
          >(reference, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory ParameterValue.fromMap(Map<String, dynamic> map) {
    return ParameterValue(
      reference: (() {
        final guardedValue = map['reference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretValueReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
