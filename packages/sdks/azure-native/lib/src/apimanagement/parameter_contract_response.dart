// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_example_contract_response.dart';

/// Operation parameters details.
class ParameterContractResponse {
  /// Default parameter value.
  final String? defaultValue;
  /// Parameter description.
  final String? description;
  /// Exampled defined for the parameter.
  final Map<String, ParameterExampleContractResponse>? examples;
  /// Parameter name.
  final String name;
  /// Specifies whether parameter is required or not.
  final bool? required;
  /// Schema identifier.
  final String? schemaId;
  /// Parameter type.
  final String type;
  /// Type name defined by the schema.
  final String? typeName;
  /// Parameter values.
  final List<String>? values;

  /// Creates a new [ParameterContractResponse].
  /// [defaultValue] Default parameter value.
  /// [description] Parameter description.
  /// [examples] Exampled defined for the parameter.
  /// [name] Parameter name.
  /// [required] Specifies whether parameter is required or not.
  /// [schemaId] Schema identifier.
  /// [type] Parameter type.
  /// [typeName] Type name defined by the schema.
  /// [values] Parameter values.
  ParameterContractResponse({
    this.defaultValue,
    this.description,
    this.examples,
    required this.name,
    this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'examples': ?examples == null ? null : pulumi.Input.encodeMapValues<ParameterExampleContractResponse, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'name': name,
      'required': ?required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ParameterContractResponse.fromMap(Map<String, dynamic> map) {
    return ParameterContractResponse(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeMapValues<ParameterExampleContractResponse>(map['examples'], (value) => ParameterExampleContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      type: map['type'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

