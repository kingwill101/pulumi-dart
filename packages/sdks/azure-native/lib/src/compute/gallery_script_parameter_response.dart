// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a parameter that can be passed to a script of a Gallery Script Version.
class GalleryScriptParameterResponse {
  /// The default value of the parameter, only applies to string types.
  final pulumi.Input<String>? defaultValue;
  /// A description to help users understand what this parameter means
  final pulumi.Input<String>? description;
  /// A list of permissible values. Only applicable values are from 'enum' values defined in 'GalleryScriptParameter'.
  final pulumi.Input<List<String>>? enumValues;
  /// The minimum value of parameter.
  final pulumi.Input<String>? maxValue;
  /// The minimum value of parameter.
  final pulumi.Input<String>? minValue;
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// Indicates whether this parameter must be passed.
  final pulumi.Input<bool>? required;
  /// Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
  final pulumi.Input<String>? type;

  /// Creates a new [GalleryScriptParameterResponse].
  /// [defaultValue] The default value of the parameter, only applies to string types.
  /// [description] A description to help users understand what this parameter means
  /// [enumValues] A list of permissible values. Only applicable values are from 'enum' values defined in 'GalleryScriptParameter'.
  /// [maxValue] The minimum value of parameter.
  /// [minValue] The minimum value of parameter.
  /// [name] The name of the parameter.
  /// [required] Indicates whether this parameter must be passed.
  /// [type] Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
  const GalleryScriptParameterResponse({
    this.defaultValue,
    this.description,
    this.enumValues,
    this.maxValue,
    this.minValue,
    required this.name,
    this.required,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'enumValues': ?enumValues,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'name': name,
      'required': ?required,
      'type': ?type,
    };
  }

  factory GalleryScriptParameterResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptParameterResponse(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumValues: (() { final guardedValue = map['enumValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

