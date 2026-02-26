// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'entity_type_auto_expansion_mode4.dart';
import 'entity_type_kind4.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_excluded_phrase.dart';

/// The set of arguments for EntityType.
class EntityTypeArgs6 {
  final Input<String> agentId;

  /// Indicates whether the entity type can be automatically expanded.
  final Input<EntityTypeAutoExpansionMode4>? autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final Input<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  final Input<bool>? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  final Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>? entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>>?
      excludedPhrases;

  /// Indicates the kind of entity type.
  final Input<EntityTypeKind4> kind;

  /// The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final Input<String>? name;
  final Input<String>? project;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  final Input<bool>? redact;

  EntityTypeArgs6({
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
      map['autoExpansionMode'] =
          Input.mapOptionalInputValue<EntityTypeAutoExpansionMode4, String>(
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
              List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeEntity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final excludedPhrasesValue = excludedPhrases;
    if (excludedPhrasesValue != null) {
      map['excludedPhrases'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>,
              List<Map<String, dynamic>>>(
          excludedPhrasesValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] = Input.mapInputValue<EntityTypeKind4, String>(
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

  factory EntityTypeArgs6.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs6(
      agentId: Input.asInput<String>(map['agentId']),
      autoExpansionMode: Input.asOptionalInput<EntityTypeAutoExpansionMode4>(
          map['autoExpansionMode']),
      displayName: Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>(
          map['entities']),
      excludedPhrases: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>>(
          map['excludedPhrases']),
      kind: Input.asInput<EntityTypeKind4>(map['kind']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      redact: Input.asOptionalInput<bool>(map['redact']),
    );
  }
}
