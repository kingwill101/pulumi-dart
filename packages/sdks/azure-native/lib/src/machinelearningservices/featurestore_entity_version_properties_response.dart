// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_column_response.dart';

/// DTO object representing feature entity version
class FeaturestoreEntityVersionPropertiesResponse {
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Specifies index columns
  final pulumi.Input<List<IndexColumnResponse>?>? indexColumns;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool?>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the featurestore entity version.
  final pulumi.Input<String> provisioningState;
  /// Specifies the asset stage
  final pulumi.Input<String?>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FeaturestoreEntityVersionPropertiesResponse].
  /// [description] The asset description text.
  /// [indexColumns] Specifies index columns
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the featurestore entity version.
  /// [stage] Specifies the asset stage
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturestoreEntityVersionPropertiesResponse({
    this.description,
    this.indexColumns,
    pulumi.Input<bool?>? isAnonymous,
    pulumi.Input<bool?>? isArchived,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  }) : isAnonymous = isAnonymous ?? pulumi.Input.fromValue(false), isArchived = isArchived ?? pulumi.Input.fromValue(false);

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

  factory FeaturestoreEntityVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityVersionPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexColumns: (() { final guardedValue = map['indexColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexColumnResponse>(guardedValue, (value) => IndexColumnResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
