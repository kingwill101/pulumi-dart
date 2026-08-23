// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB parameters.
class ParameterPropertiesResponse {
  /// The allowed values for the parameter.
  final pulumi.Input<String> allowedValues;
  /// The data type of the parameter.
  final pulumi.Input<String> dataType;
  /// The description of the parameter.
  final pulumi.Input<String> description;
  /// Link to parameter documentation.
  final pulumi.Input<String> documentationLink;
  /// Whether the parameter can be changed dynamically.
  final pulumi.Input<bool> isDynamic;
  /// Whether the parameter is a read-only parameter.
  final pulumi.Input<bool> isReadOnly;
  /// The name of the parameter.
  final pulumi.Input<String>? name;
  /// The unit of measurement for the parameter.
  final pulumi.Input<String> unit;
  /// The value of the configuration.
  final pulumi.Input<String>? value;

  /// Creates a new [ParameterPropertiesResponse].
  /// [allowedValues] The allowed values for the parameter.
  /// [dataType] The data type of the parameter.
  /// [description] The description of the parameter.
  /// [documentationLink] Link to parameter documentation.
  /// [isDynamic] Whether the parameter can be changed dynamically.
  /// [isReadOnly] Whether the parameter is a read-only parameter.
  /// [name] The name of the parameter.
  /// [unit] The unit of measurement for the parameter.
  /// [value] The value of the configuration.
  const ParameterPropertiesResponse({
    required this.allowedValues,
    required this.dataType,
    required this.description,
    required this.documentationLink,
    required this.isDynamic,
    required this.isReadOnly,
    this.name,
    required this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'dataType': dataType,
      'description': description,
      'documentationLink': documentationLink,
      'isDynamic': isDynamic,
      'isReadOnly': isReadOnly,
      'name': ?name,
      'unit': unit,
      'value': ?value,
    };
  }

  factory ParameterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ParameterPropertiesResponse(
      allowedValues: pulumi.Input.fromValue(map['allowedValues'] as String),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      documentationLink: pulumi.Input.fromValue(map['documentationLink'] as String),
      isDynamic: pulumi.Input.fromValue(map['isDynamic'] as bool),
      isReadOnly: pulumi.Input.fromValue(map['isReadOnly'] as bool),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
