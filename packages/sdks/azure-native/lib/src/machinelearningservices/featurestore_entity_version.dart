// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_column.dart';

/// DTO object representing feature entity version
class FeaturestoreEntityVersion {
  /// The asset description text.
  final String? description;
  /// Specifies index columns
  final List<IndexColumn>? indexColumns;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Specifies the asset stage
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturestoreEntityVersion].
  /// [description] The asset description text.
  /// [indexColumns] Specifies index columns
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [stage] Specifies the asset stage
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturestoreEntityVersion({
    this.description,
    this.indexColumns,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'indexColumns': ?indexColumns == null ? null : pulumi.Input.encodeList<IndexColumn, Map<String, dynamic>>(indexColumns!, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturestoreEntityVersion.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityVersion(
      description: map['description'] == null ? null : map['description'] as String,
      indexColumns: map['indexColumns'] == null ? null : pulumi.Input.decodeList<IndexColumn>(map['indexColumns'], (value) => IndexColumn.fromMap((value as Map).cast<String, dynamic>())),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

