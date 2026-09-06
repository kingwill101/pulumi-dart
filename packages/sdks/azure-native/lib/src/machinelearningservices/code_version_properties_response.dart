// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Code asset version details.
class CodeVersionPropertiesResponse {
  /// Uri where code is located
  final pulumi.Input<String?>? codeUri;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool?>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the code version.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CodeVersionPropertiesResponse].
  /// [codeUri] Uri where code is located
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the code version.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  CodeVersionPropertiesResponse({
    this.codeUri,
    this.description,
    pulumi.Input<bool?>? isAnonymous,
    pulumi.Input<bool?>? isArchived,
    this.properties,
    required this.provisioningState,
    this.tags,
  }) : isAnonymous = isAnonymous ?? pulumi.Input.fromValue(false), isArchived = isArchived ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeUri': ?codeUri,
      'description': ?description,
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'tags': ?tags,
    };
  }

  factory CodeVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CodeVersionPropertiesResponse(
      codeUri: (() { final guardedValue = map['codeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
