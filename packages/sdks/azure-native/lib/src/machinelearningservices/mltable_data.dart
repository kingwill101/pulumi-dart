// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MLTable data definition
class MLTableData {
  /// Enum to determine the type of data.
  /// Expected value is 'mltable'.
  final pulumi.Input<String> dataType;
  /// [Required] Uri of the data. Example: https://go.microsoft.com/fwlink/?linkid=2202330
  final pulumi.Input<String> dataUri;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool?>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Uris referenced in the MLTable definition (required for lineage)
  final pulumi.Input<List<String>?>? referencedUris;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MLTableData].
  /// [dataType] Enum to determine the type of data.
  /// [dataUri] [Required] Uri of the data. Example: https://go.microsoft.com/fwlink/?linkid=2202330
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [referencedUris] Uris referenced in the MLTable definition (required for lineage)
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  MLTableData({
    required this.dataType,
    required this.dataUri,
    this.description,
    pulumi.Input<bool?>? isAnonymous,
    pulumi.Input<bool?>? isArchived,
    this.properties,
    this.referencedUris,
    this.tags,
  }) : isAnonymous = isAnonymous ?? pulumi.Input.fromValue(false), isArchived = isArchived ?? pulumi.Input.fromValue(false);

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

  factory MLTableData.fromMap(Map<String, dynamic> map) {
    return MLTableData(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      dataUri: pulumi.Input.fromValue(map['dataUri'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referencedUris: (() { final guardedValue = map['referencedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
