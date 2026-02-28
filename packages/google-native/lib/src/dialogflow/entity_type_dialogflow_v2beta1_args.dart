// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode_dialogflow_v2beta1.dart';
import 'entity_type_kind_dialogflow_v2beta1.dart';
import 'google_cloud_dialogflow_v2beta1_entity_type_entity.dart';

/// {@template pulumi_dialogflow_v2beta1_entity_type_dialogflow_v2beta1_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_entity_type_dialogflow_v2beta1_args_doc}
class EntityTypeDialogflowV2beta1Args {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionModeDialogflowV2beta1>?
      autoExpansionMode;

  /// The name of the entity type.
  final pulumi.Input<String> displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>>?
      entities;

  /// Indicates the kind of entity type.
  final pulumi.Input<EntityTypeKindDialogflowV2beta1> kind;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [EntityTypeDialogflowV2beta1Args].
  /// [autoExpansionMode] Optional. Indicates whether the entity type can be automatically expanded.
  /// [displayName] The name of the entity type.
  /// [enableFuzzyExtraction] Optional. Enables fuzzy entity extraction during classification.
  /// [entities] Optional. The collection of entity entries associated with the entity type.
  /// [kind] Indicates the kind of entity type.
  /// [languageCode] Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  /// [location] Optional.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  /// [project] Optional.
  EntityTypeDialogflowV2beta1Args({
    EntityTypeAutoExpansionModeDialogflowV2beta1? autoExpansionMode,
    required String displayName,
    bool? enableFuzzyExtraction,
    List<GoogleCloudDialogflowV2beta1EntityTypeEntity>? entities,
    required EntityTypeKindDialogflowV2beta1 kind,
    String? languageCode,
    String? location,
    String? name,
    String? project,
  })  : autoExpansionMode = pulumi.Input.asOptionalInput<
            EntityTypeAutoExpansionModeDialogflowV2beta1>(autoExpansionMode),
        displayName = pulumi.Input.asInput<String>(displayName),
        enableFuzzyExtraction =
            pulumi.Input.asOptionalInput<bool>(enableFuzzyExtraction),
        entities = pulumi.Input.asOptionalInput<
            List<GoogleCloudDialogflowV2beta1EntityTypeEntity>>(entities),
        kind = pulumi.Input.asInput<EntityTypeKindDialogflowV2beta1>(kind),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoExpansionModeValue = autoExpansionMode;
    if (autoExpansionModeValue != null) {
      map['autoExpansionMode'] = pulumi.Input.mapOptionalInputValue<
          EntityTypeAutoExpansionModeDialogflowV2beta1,
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
              List<GoogleCloudDialogflowV2beta1EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowV2beta1EntityTypeEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] =
        pulumi.Input.mapInputValue<EntityTypeKindDialogflowV2beta1, String>(
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

  factory EntityTypeDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return EntityTypeDialogflowV2beta1Args(
      autoExpansionMode: map['autoExpansionMode'] == null
          ? null
          : EntityTypeAutoExpansionModeDialogflowV2beta1.fromValue(
              map['autoExpansionMode'] as String),
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null
          ? null
          : map['enableFuzzyExtraction'] as bool,
      entities: map['entities'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1EntityTypeEntity>(
              map['entities'],
              (value) => GoogleCloudDialogflowV2beta1EntityTypeEntity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: EntityTypeKindDialogflowV2beta1.fromValue(map['kind'] as String),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
