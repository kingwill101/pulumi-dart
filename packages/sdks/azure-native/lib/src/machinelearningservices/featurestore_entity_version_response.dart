// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_column_response.dart';

/// DTO object representing feature entity version
class FeaturestoreEntityVersionResponse {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Specifies index columns
  final pulumi.Input<List<IndexColumnResponse>>? indexColumns;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the featurestore entity version.
  final pulumi.Input<String> provisioningState;
  /// Specifies the asset stage
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'indexColumns': ?pulumi.Input.mapOptionalInputValue<List<IndexColumnResponse>, List<Map<String, dynamic>>>(indexColumns, (value) => pulumi.Input.encodeList<IndexColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      indexColumns: map['indexColumns'] == null ? null : (pulumi.Input.decodeList<IndexColumnResponse>(map['indexColumns']!, (value) => IndexColumnResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous']! as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

