// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a parameter that can be passed to a script of a Gallery Script Version.
class GalleryScriptParameter {
  /// The default value of the parameter, only applies to string types.
  final String? defaultValue;
  /// A description to help users understand what this parameter means
  final String? description;
  /// A list of permissible values. Only applicable values are from 'enum' values defined in 'GalleryScriptParameter'.
  final List<String>? enumValues;
  /// The minimum value of parameter.
  final String? maxValue;
  /// The minimum value of parameter.
  final String? minValue;
  /// The name of the parameter.
  final String name;
  /// Indicates whether this parameter must be passed.
  final bool? required;
  /// Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
  final String? type;

  /// Creates a new [GalleryScriptParameter].
  /// [defaultValue] The default value of the parameter, only applies to string types.
  /// [description] A description to help users understand what this parameter means
  /// [enumValues] A list of permissible values. Only applicable values are from 'enum' values defined in 'GalleryScriptParameter'.
  /// [maxValue] The minimum value of parameter.
  /// [minValue] The minimum value of parameter.
  /// [name] The name of the parameter.
  /// [required] Indicates whether this parameter must be passed.
  /// [type] Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
  GalleryScriptParameter({
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

  factory GalleryScriptParameter.fromMap(Map<String, dynamic> map) {
    return GalleryScriptParameter(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enumValues: map['enumValues'] == null ? null : (map['enumValues'] as List).cast<String>(),
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

