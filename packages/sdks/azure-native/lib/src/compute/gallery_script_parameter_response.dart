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
  GalleryScriptParameterResponse({
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
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enumValues: map['enumValues'] == null ? null : ((map['enumValues'] as List).cast<String>()).input(),
      maxValue: map['maxValue'] == null ? null : (map['maxValue'] as String).input(),
      minValue: map['minValue'] == null ? null : (map['minValue'] as String).input(),
      name: (map['name'] as String).input(),
      required: map['required'] == null ? null : (map['required'] as bool).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

