// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a parameter that can be passed to a custom action of a Gallery Application Version.
class GalleryApplicationCustomActionParameterResponse {
  /// The default value of the parameter.  Only applies to string types
  final String? defaultValue;
  /// A description to help users understand what this parameter means
  final String? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final String name;
  /// Indicates whether this parameter must be passed when running the custom action.
  final bool? required;
  /// Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  final String? type;

  /// Creates a new [GalleryApplicationCustomActionParameterResponse].
  /// [defaultValue] The default value of the parameter.  Only applies to string types
  /// [description] A description to help users understand what this parameter means
  /// [name] The name of the custom action.  Must be unique within the Gallery Application Version.
  /// [required] Indicates whether this parameter must be passed when running the custom action.
  /// [type] Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  GalleryApplicationCustomActionParameterResponse({
    this.defaultValue,
    this.description,
    required this.name,
    this.required,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'name': name,
      'required': ?required,
      'type': ?type,
    };
  }

  factory GalleryApplicationCustomActionParameterResponse.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationCustomActionParameterResponse(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

