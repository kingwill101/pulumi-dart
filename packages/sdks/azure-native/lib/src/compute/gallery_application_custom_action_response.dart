// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_parameter_response.dart';

/// A custom action that can be performed with a Gallery Application Version.
class GalleryApplicationCustomActionResponse {
  /// Description to help the users understand what this custom action does.
  final pulumi.Input<String>? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final pulumi.Input<String> name;
  /// The parameters that this custom action uses
  final pulumi.Input<List<GalleryApplicationCustomActionParameterResponse>>? parameters;
  /// The script to run when executing this custom action.
  final pulumi.Input<String> script;

  /// Creates a new [GalleryApplicationCustomActionResponse].
  /// [description] Description to help the users understand what this custom action does.
  /// [name] The name of the custom action.  Must be unique within the Gallery Application Version.
  /// [parameters] The parameters that this custom action uses
  /// [script] The script to run when executing this custom action.
  GalleryApplicationCustomActionResponse({
    this.description,
    required this.name,
    this.parameters,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationCustomActionParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GalleryApplicationCustomActionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'script': script,
    };
  }

  factory GalleryApplicationCustomActionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationCustomActionResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<GalleryApplicationCustomActionParameterResponse>(map['parameters'], (value) => GalleryApplicationCustomActionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      script: (map['script'] as String).input(),
    );
  }
}

