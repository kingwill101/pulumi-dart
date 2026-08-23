// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_parameter.dart';

/// A custom action that can be performed with a Gallery Application Version.
class GalleryApplicationCustomAction {
  /// Description to help the users understand what this custom action does.
  final pulumi.Input<String>? description;
  /// The name of the custom action.  Must be unique within the Gallery Application Version.
  final pulumi.Input<String> name;
  /// The parameters that this custom action uses
  final pulumi.Input<List<GalleryApplicationCustomActionParameter>>? parameters;
  /// The script to run when executing this custom action.
  final pulumi.Input<String> script;

  /// Creates a new [GalleryApplicationCustomAction].
  /// [description] Description to help the users understand what this custom action does.
  /// [name] The name of the custom action.  Must be unique within the Gallery Application Version.
  /// [parameters] The parameters that this custom action uses
  /// [script] The script to run when executing this custom action.
  const GalleryApplicationCustomAction({
    this.description,
    required this.name,
    this.parameters,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationCustomActionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GalleryApplicationCustomActionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'script': script,
    };
  }

  factory GalleryApplicationCustomAction.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationCustomAction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryApplicationCustomActionParameter>(guardedValue, (value) => GalleryApplicationCustomActionParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}
