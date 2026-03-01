// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_query_parameter_example.dart';

class ApiOperationRequestQueryParameter {
  /// The default value for this Query Parameter.
  final String? defaultValue;
  /// A description of this Query Parameter.
  final String? description;
  /// One or more `example` blocks as defined above.
  final List<ApiOperationRequestQueryParameterExample>? examples;
  /// The Name of this Query Parameter.
  final String name;
  /// Is this Query Parameter Required?
  final bool required;
  /// The name of the Schema.
  final String? schemaId;
  /// The Type of this Query Parameter, such as a `string`.
  final String type;
  /// The type name defined by the Schema.
  final String? typeName;
  /// One or more acceptable values for this Query Parameter.
  final List<String>? values;

  /// Creates a new [ApiOperationRequestQueryParameter].
  /// [defaultValue] The default value for this Query Parameter.
  /// [description] A description of this Query Parameter.
  /// [examples] One or more `example` blocks as defined above.
  /// [name] The Name of this Query Parameter.
  /// [required] Is this Query Parameter Required?
  /// [schemaId] The name of the Schema.
  /// [type] The Type of this Query Parameter, such as a `string`.
  /// [typeName] The type name defined by the Schema.
  /// [values] One or more acceptable values for this Query Parameter.
  ApiOperationRequestQueryParameter({
    this.defaultValue,
    this.description,
    this.examples,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'examples': ?examples == null ? null : pulumi.Input.encodeList<ApiOperationRequestQueryParameterExample, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'name': name,
      'required': required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ApiOperationRequestQueryParameter.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequestQueryParameter(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeList<ApiOperationRequestQueryParameterExample>(map['examples'], (value) => ApiOperationRequestQueryParameterExample.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      required: map['required'] as bool,
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      type: map['type'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

