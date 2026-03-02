// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_value_reference_response.dart';

/// Value for the specified parameter. Can be either 'value' or 'reference' but not both.
class ParameterValueResponse {
  /// Parameter value as reference type.
  final pulumi.Input<SecretValueReferenceResponse>? reference;
  /// Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ParameterValueResponse].
  /// [reference] Parameter value as reference type.
  /// [value] Parameter value. Any valid JSON value is allowed including objects, arrays, strings, numbers and booleans.
  ParameterValueResponse({
    this.reference,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?pulumi.Input.mapOptionalInputValue<SecretValueReferenceResponse, Map<String, dynamic>>(reference, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory ParameterValueResponse.fromMap(Map<String, dynamic> map) {
    return ParameterValueResponse(
      reference: map['reference'] == null ? null : (SecretValueReferenceResponse.fromMap((map['reference']! as Map).cast<String, dynamic>())).input(),
      value: map['value'] == null ? null : (map['value']!).input(),
    );
  }
}

