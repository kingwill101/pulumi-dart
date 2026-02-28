// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode.dart';
import 'entity_type_kind.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity.dart';

/// {@template pulumi_dialogflow_v2_entity_type_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_entity_type_args_doc}
class EntityTypeArgs {
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

  /// Creates a new [EntityTypeArgs].
  /// [autoExpansionMode] Optional. Indicates whether the entity type can be automatically expanded.
  /// [displayName] The name of the entity type.
  /// [enableFuzzyExtraction] Optional. Enables fuzzy entity extraction during classification.
  /// [entities] Optional. The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [languageCode] Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  /// [location] Optional.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  /// [project] Optional.
  EntityTypeArgs({
    EntityTypeAutoExpansionMode? autoExpansionMode,
    required String displayName,
    bool? enableFuzzyExtraction,
    List<GoogleCloudDialogflowV2EntityTypeEntity>? entities,
    required EntityTypeKind kind,
    String? languageCode,
    String? location,
    String? name,
    String? project,
  })  : autoExpansionMode =
            pulumi.Input.asOptionalInput<EntityTypeAutoExpansionMode>(
                autoExpansionMode),
        displayName = pulumi.Input.asInput<String>(displayName),
        enableFuzzyExtraction =
            pulumi.Input.asOptionalInput<bool>(enableFuzzyExtraction),
        entities = pulumi.Input.asOptionalInput<
            List<GoogleCloudDialogflowV2EntityTypeEntity>>(entities),
        kind = pulumi.Input.asInput<EntityTypeKind>(kind),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      autoExpansionMode: map['autoExpansionMode'] == null
          ? null
          : EntityTypeAutoExpansionMode.fromValue(
              map['autoExpansionMode'] as String),
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null
          ? null
          : map['enableFuzzyExtraction'] as bool,
      entities: map['entities'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntity>(
              map['entities'],
              (value) => GoogleCloudDialogflowV2EntityTypeEntity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: EntityTypeKind.fromValue(map['kind'] as String),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
