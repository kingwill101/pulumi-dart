// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter example.
class ParameterExampleContractResponse {
  /// Long description for the example
  final pulumi.Input<String?>? description;
  /// A URL that points to the literal example
  final pulumi.Input<String?>? externalValue;
  /// Short description for the example
  final pulumi.Input<String?>? summary;
  /// Example value. May be a primitive value, or an object.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ParameterExampleContractResponse].
  /// [description] Long description for the example
  /// [externalValue] A URL that points to the literal example
  /// [summary] Short description for the example
  /// [value] Example value. May be a primitive value, or an object.
  const ParameterExampleContractResponse({
    this.description,
    this.externalValue,
    this.summary,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalValue': ?externalValue,
      'summary': ?summary,
      'value': ?value,
    };
  }

  factory ParameterExampleContractResponse.fromMap(Map<String, dynamic> map) {
    return ParameterExampleContractResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalValue: (() { final guardedValue = map['externalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
