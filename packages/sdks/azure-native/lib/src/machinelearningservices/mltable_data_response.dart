// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MLTable data definition
class MLTableDataResponse {
  /// Enum to determine the type of data.
  /// Expected value is 'mltable'.
  final pulumi.Input<String> dataType;
  /// [Required] Uri of the data. Example: https://go.microsoft.com/fwlink/?linkid=2202330
  final pulumi.Input<String> dataUri;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Uris referenced in the MLTable definition (required for lineage)
  final pulumi.Input<List<String>>? referencedUris;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MLTableDataResponse].
  /// [dataType] Enum to determine the type of data.
  /// [dataUri] [Required] Uri of the data. Example: https://go.microsoft.com/fwlink/?linkid=2202330
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [referencedUris] Uris referenced in the MLTable definition (required for lineage)
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  MLTableDataResponse({
    required this.dataType,
    required this.dataUri,
    this.description,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    this.referencedUris,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'dataUri': dataUri,
      'description': ?description,
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'referencedUris': ?referencedUris,
      'tags': ?tags,
    };
  }

  factory MLTableDataResponse.fromMap(Map<String, dynamic> map) {
    return MLTableDataResponse(
      dataType: (map['dataType'] as String).input(),
      dataUri: (map['dataUri'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous'] as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      referencedUris: map['referencedUris'] == null ? null : ((map['referencedUris'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

