// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Code asset version details.
class CodeVersionResponse {
  /// Uri where code is located
  final pulumi.Input<String>? codeUri;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the code version.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeVersionResponse].
  /// [codeUri] Uri where code is located
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the code version.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  CodeVersionResponse({
    this.codeUri,
    this.description,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    required this.provisioningState,
    this.tags,
  });

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

  factory CodeVersionResponse.fromMap(Map<String, dynamic> map) {
    return CodeVersionResponse(
      codeUri: map['codeUri'] == null ? null : (map['codeUri'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous'] as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

