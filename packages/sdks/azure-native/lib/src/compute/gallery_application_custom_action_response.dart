// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_parameter_response.dart';

/// A custom action that can be performed with a Gallery Application Version.
class GalleryApplicationCustomActionResponse {
  /// Description to help the users understand what this custom action does.
  final String? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final String name;
  /// The parameters that this custom action uses
  final List<GalleryApplicationCustomActionParameterResponse>? parameters;
  /// The script to run when executing this custom action.
  final String script;

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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<GalleryApplicationCustomActionParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'script': script,
    };
  }

  factory GalleryApplicationCustomActionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationCustomActionResponse(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<GalleryApplicationCustomActionParameterResponse>(map['parameters'], (value) => GalleryApplicationCustomActionParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      script: map['script'] as String,
    );
  }
}

