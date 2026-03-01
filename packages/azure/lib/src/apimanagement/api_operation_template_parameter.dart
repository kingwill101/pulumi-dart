// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_template_parameter_example.dart';

class ApiOperationTemplateParameter {
  /// The default value for this Template Parameter.
  final String? defaultValue;
  /// A description of this Template Parameter.
  final String? description;
  /// One or more `example` blocks as defined above.
  final List<ApiOperationTemplateParameterExample>? examples;
  /// The Name of this Template Parameter.
  final String name;
  /// Is this Template Parameter Required?
  final bool required;
  /// The name of the Schema.
  final String? schemaId;
  /// The Type of this Template Parameter, such as a `string`.
  final String type;
  /// The type name defined by the Schema.
  final String? typeName;
  /// One or more acceptable values for this Template Parameter.
  final List<String>? values;

  /// Creates a new [ApiOperationTemplateParameter].
  /// [defaultValue] The default value for this Template Parameter.
  /// [description] A description of this Template Parameter.
  /// [examples] One or more `example` blocks as defined above.
  /// [name] The Name of this Template Parameter.
  /// [required] Is this Template Parameter Required?
  /// [schemaId] The name of the Schema.
  /// [type] The Type of this Template Parameter, such as a `string`.
  /// [typeName] The type name defined by the Schema.
  /// [values] One or more acceptable values for this Template Parameter.
  ApiOperationTemplateParameter({
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
      'examples': ?examples == null ? null : pulumi.Input.encodeList<ApiOperationTemplateParameterExample, Map<String, dynamic>>(examples!, (value) => value.toMap()),
      'name': name,
      'required': required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ApiOperationTemplateParameter.fromMap(Map<String, dynamic> map) {
    return ApiOperationTemplateParameter(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      examples: map['examples'] == null ? null : pulumi.Input.decodeList<ApiOperationTemplateParameterExample>(map['examples'], (value) => ApiOperationTemplateParameterExample.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      required: map['required'] as bool,
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      type: map['type'] as String,
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

