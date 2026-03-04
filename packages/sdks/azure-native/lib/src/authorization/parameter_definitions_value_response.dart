// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response_metadata.dart';

/// The definition of a parameter that can be provided to the policy.
class ParameterDefinitionsValueResponse {
  /// The allowed values for the parameter.
  final pulumi.Input<List<dynamic>>? allowedValues;

  /// The default value for the parameter if no value is provided.
  final pulumi.Input<dynamic>? defaultValue;

  /// General metadata for the parameter.
  final pulumi.Input<ParameterDefinitionsValueResponseMetadata>? metadata;

  /// Provides validation of parameter inputs during assignment using a self-defined JSON schema. This property is only supported for object-type parameters and follows the Json.NET Schema 2019-09 implementation. You can learn more about using schemas at https://json-schema.org/ and test draft schemas at https://www.jsonschemavalidator.net/.
  final pulumi.Input<dynamic>? schema;

  /// The data type of the parameter.
  final pulumi.Input<String>? type;

  /// Creates a new [ParameterDefinitionsValueResponse].
  /// [allowedValues] The allowed values for the parameter.
  /// [defaultValue] The default value for the parameter if no value is provided.
  /// [metadata] General metadata for the parameter.
  /// [schema] Provides validation of parameter inputs during assignment using a self-defined JSON schema. This property is only supported for object-type parameters and follows the Json.NET Schema 2019-09 implementation. You can learn more about using schemas at https://json-schema.org/ and test draft schemas at https://www.jsonschemavalidator.net/.
  /// [type] The data type of the parameter.
  ParameterDefinitionsValueResponse({
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
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            ParameterDefinitionsValueResponseMetadata,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'schema': ?schema,
      'type': ?type,
    };
  }

  factory ParameterDefinitionsValueResponse.fromMap(Map<String, dynamic> map) {
    return ParameterDefinitionsValueResponse(
      allowedValues: (() {
        final guardedValue = map['allowedValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      defaultValue: (() {
        final guardedValue = map['defaultValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ParameterDefinitionsValueResponseMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
