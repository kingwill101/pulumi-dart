// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode_dialogflow_v3.dart';
import 'entity_type_kind_dialogflow_v3.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_entity.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_excluded_phrase.dart';

/// The set of arguments for EntityType.
class EntityTypeDialogflowV3Args {
  final pulumi.Input<String> agentId;

  /// Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionModeDialogflowV3>?
      autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EntityTypeEntity>>? entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>>?
      excludedPhrases;

  /// Indicates the kind of entity type.
  final pulumi.Input<EntityTypeKindDialogflowV3> kind;

  /// The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  final pulumi.Input<bool>? redact;

  EntityTypeDialogflowV3Args({
    required this.agentId,
    this.autoExpansionMode,
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    required this.kind,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final autoExpansionModeValue = autoExpansionMode;
    if (autoExpansionModeValue != null) {
      map['autoExpansionMode'] = pulumi.Input.mapOptionalInputValue<
          EntityTypeAutoExpansionModeDialogflowV3,
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
              List<GoogleCloudDialogflowCxV3EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3EntityTypeEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final excludedPhrasesValue = excludedPhrases;
    if (excludedPhrasesValue != null) {
      map['excludedPhrases'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>,
              List<Map<String, dynamic>>>(
          excludedPhrasesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] =
        pulumi.Input.mapInputValue<EntityTypeKindDialogflowV3, String>(
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
    final redactValue = redact;
    if (redactValue != null) {
      map['redact'] = redactValue;
    }
    return map;
  }

  factory EntityTypeDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return EntityTypeDialogflowV3Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      autoExpansionMode:
          pulumi.Input.asOptionalInput<EntityTypeAutoExpansionModeDialogflowV3>(
              map['autoExpansionMode']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          pulumi.Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities: pulumi.Input.asOptionalInput<
          List<GoogleCloudDialogflowCxV3EntityTypeEntity>>(map['entities']),
      excludedPhrases: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>>(
          map['excludedPhrases']),
      kind: pulumi.Input.asInput<EntityTypeKindDialogflowV3>(map['kind']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      redact: pulumi.Input.asOptionalInput<bool>(map['redact']),
    );
  }
}
