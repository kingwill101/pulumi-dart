// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_parameter_type.dart';

/// The definition of a parameter that can be passed to a custom action of a Gallery Application Version.
class GalleryApplicationCustomActionParameter {
  /// The default value of the parameter.  Only applies to string types
  final pulumi.Input<String?>? defaultValue;
  /// A description to help users understand what this parameter means
  final pulumi.Input<String?>? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final pulumi.Input<String> name;
  /// Indicates whether this parameter must be passed when running the custom action.
  final pulumi.Input<bool?>? required;
  /// Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  final pulumi.Input<GalleryApplicationCustomActionParameterType?>? type;

  /// Creates a new [GalleryApplicationCustomActionParameter].
  /// [defaultValue] The default value of the parameter.  Only applies to string types
  /// [description] A description to help users understand what this parameter means
  /// [name] The name of the custom action.  Must be unique within the Gallery Application Version.
  /// [required] Indicates whether this parameter must be passed when running the custom action.
  /// [type] Specifies the type of the custom action parameter. Possible values are: String, ConfigurationDataBlob or LogOutputBlob
  const GalleryApplicationCustomActionParameter({
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
      'type': ?pulumi.Input.mapOptionalInputValue<GalleryApplicationCustomActionParameterType, String>(type, (value) => value.wireValue),
    };
  }

  factory GalleryApplicationCustomActionParameter.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationCustomActionParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryApplicationCustomActionParameterType.fromValue(guardedValue as String)); })(),
    );
  }
}
