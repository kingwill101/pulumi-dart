// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_column.dart';

/// DTO object representing feature entity version
class FeaturestoreEntityVersion {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Specifies index columns
  final pulumi.Input<List<IndexColumn>>? indexColumns;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Specifies the asset stage
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'indexColumns': ?pulumi.Input.mapOptionalInputValue<List<IndexColumn>, List<Map<String, dynamic>>>(indexColumns, (value) => pulumi.Input.encodeList<IndexColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturestoreEntityVersion.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityVersion(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      indexColumns: map['indexColumns'] == null ? null : (pulumi.Input.decodeList<IndexColumn>(map['indexColumns'], (value) => IndexColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous'] as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      stage: map['stage'] == null ? null : (map['stage'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

