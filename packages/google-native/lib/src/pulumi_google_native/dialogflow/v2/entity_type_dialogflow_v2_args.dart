// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode.dart';
import 'entity_type_kind.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity.dart';

/// The set of arguments for EntityType.
class EntityTypeDialogflowV2Args {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionMode>? autoExpansionMode;

  /// The name of the entity type.
  final pulumi.Input<String> displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2EntityTypeEntity>>? entities;

  /// Indicates the kind of entity type.
  final pulumi.Input<EntityTypeKind> kind;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  EntityTypeDialogflowV2Args({
    this.autoExpansionMode,
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    required this.kind,
    this.languageCode,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoExpansionModeValue = autoExpansionMode;
    if (autoExpansionModeValue != null) {
      map['autoExpansionMode'] = pulumi.Input.mapOptionalInputValue<
          EntityTypeAutoExpansionMode,
          String>(autoExpansionModeValue, (value) => value.value);
    }
    map['displayName'] = displayName;
    final enableFuzzyExtractionValue = enableFuzzyExtraction;
    if (enableFuzzyExtractionValue != null) {
      map['enableFuzzyExtraction'] = enableFuzzyExtractionValue;
    }
    final entitiesValue = entities;
    if (entitiesValue != null) {
      map['entities'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowV2EntityTypeEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] = pulumi.Input.mapInputValue<EntityTypeKind, String>(
        kind, (value) => value.value);
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntityTypeDialogflowV2Args.fromMap(Map<String, dynamic> map) {
    return EntityTypeDialogflowV2Args(
      autoExpansionMode:
          pulumi.Input.asOptionalInput<EntityTypeAutoExpansionMode>(
              map['autoExpansionMode']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          pulumi.Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities: pulumi.Input.asOptionalInput<
          List<GoogleCloudDialogflowV2EntityTypeEntity>>(map['entities']),
      kind: pulumi.Input.asInput<EntityTypeKind>(map['kind']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
