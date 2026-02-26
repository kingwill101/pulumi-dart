// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'entity_type_auto_expansion_mode.dart';
import 'entity_type_kind.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity.dart';

/// The set of arguments for EntityType.
class EntityTypeArgs3 {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final Input<EntityTypeAutoExpansionMode>? autoExpansionMode;

  /// The name of the entity type.
  final Input<String> displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  final Input<bool>? enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  final Input<List<GoogleCloudDialogflowV2EntityTypeEntity>>? entities;

  /// Indicates the kind of entity type.
  final Input<EntityTypeKind> kind;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  final Input<String>? name;
  final Input<String>? project;

  EntityTypeArgs3({
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
      map['autoExpansionMode'] =
          Input.mapOptionalInputValue<EntityTypeAutoExpansionMode, String>(
              autoExpansionModeValue, (value) => value.value);
    }
    map['displayName'] = displayName;
    final enableFuzzyExtractionValue = enableFuzzyExtraction;
    if (enableFuzzyExtractionValue != null) {
      map['enableFuzzyExtraction'] = enableFuzzyExtractionValue;
    }
    final entitiesValue = entities;
    if (entitiesValue != null) {
      map['entities'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => Input.encodeList<GoogleCloudDialogflowV2EntityTypeEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] = Input.mapInputValue<EntityTypeKind, String>(
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

  factory EntityTypeArgs3.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs3(
      autoExpansionMode: Input.asOptionalInput<EntityTypeAutoExpansionMode>(
          map['autoExpansionMode']),
      displayName: Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities:
          Input.asOptionalInput<List<GoogleCloudDialogflowV2EntityTypeEntity>>(
              map['entities']),
      kind: Input.asInput<EntityTypeKind>(map['kind']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
