// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_column_response.dart';

/// DTO object representing feature entity version
class FeaturestoreEntityVersionResponse {
  /// The asset description text.
  final String? description;
  /// Specifies index columns
  final List<IndexColumnResponse>? indexColumns;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Provisioning state for the featurestore entity version.
  final String provisioningState;
  /// Specifies the asset stage
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturestoreEntityVersionResponse].
  /// [description] The asset description text.
  /// [indexColumns] Specifies index columns
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the featurestore entity version.
  /// [stage] Specifies the asset stage
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturestoreEntityVersionResponse({
    this.description,
    this.indexColumns,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'indexColumns': ?indexColumns == null ? null : pulumi.Input.encodeList<IndexColumnResponse, Map<String, dynamic>>(indexColumns!, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturestoreEntityVersionResponse.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityVersionResponse(
      description: map['description'] == null ? null : map['description'] as String,
      indexColumns: map['indexColumns'] == null ? null : pulumi.Input.decodeList<IndexColumnResponse>(map['indexColumns'], (value) => IndexColumnResponse.fromMap((value as Map).cast<String, dynamic>())),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

