// ignore_for_file: unused_element, unnecessary_cast

import 'parameter_definitions_value_metadata.dart';

/// The definition of a parameter that can be provided to the policy.
class ParameterDefinitionsValue {
  /// The allowed values for the parameter.
  final List<dynamic>? allowedValues;
  /// The default value for the parameter if no value is provided.
  final dynamic defaultValue;
  /// General metadata for the parameter.
  final ParameterDefinitionsValueMetadata? metadata;
  /// Provides validation of parameter inputs during assignment using a self-defined JSON schema. This property is only supported for object-type parameters and follows the Json.NET Schema 2019-09 implementation. You can learn more about using schemas at https://json-schema.org/ and test draft schemas at https://www.jsonschemavalidator.net/.
  final dynamic schema;
  /// The data type of the parameter.
  final String? type;

  /// Creates a new [ParameterDefinitionsValue].
  /// [allowedValues] The allowed values for the parameter.
  /// [defaultValue] The default value for the parameter if no value is provided.
  /// [metadata] General metadata for the parameter.
  /// [schema] Provides validation of parameter inputs during assignment using a self-defined JSON schema. This property is only supported for object-type parameters and follows the Json.NET Schema 2019-09 implementation. You can learn more about using schemas at https://json-schema.org/ and test draft schemas at https://www.jsonschemavalidator.net/.
  /// [type] The data type of the parameter.
  ParameterDefinitionsValue({
    this.allowedValues,
    this.defaultValue,
    this.metadata,
    this.schema,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'defaultValue': ?defaultValue,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'schema': ?schema,
      'type': ?type,
    };
  }

  factory ParameterDefinitionsValue.fromMap(Map<String, dynamic> map) {
    return ParameterDefinitionsValue(
      allowedValues: map['allowedValues'] == null ? null : (map['allowedValues'] as List).cast<dynamic>(),
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      metadata: map['metadata'] == null ? null : ParameterDefinitionsValueMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      schema: map['schema'] == null ? null : map['schema'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

