// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a parameter that can be passed to a custom action of a Gallery Application Version.
class GalleryApplicationCustomActionParameterResponse {
  /// The default value of the parameter.  Only applies to string types
  final pulumi.Input<String?>? defaultValue;
  /// A description to help users understand what this parameter means
  final pulumi.Input<String?>? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final pulumi.Input<String> name;
  /// Indicates whether this parameter must be passed when running the custom action.
  final pulumi.Input<bool?>? required;
  /// Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  final pulumi.Input<String?>? type;

  /// Creates a new [GalleryApplicationCustomActionParameterResponse].
  /// [defaultValue] The default value of the parameter.  Only applies to string types
  /// [description] A description to help users understand what this parameter means
  /// [name] The name of the custom action.  Must be unique within the Gallery Application Version.
  /// [required] Indicates whether this parameter must be passed when running the custom action.
  /// [type] Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  const GalleryApplicationCustomActionParameterResponse({
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
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
