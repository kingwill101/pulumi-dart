// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_auto_expansion_mode_dialogflow_v3.dart';
import 'entity_type_kind_dialogflow_v3.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_entity.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_excluded_phrase.dart';

/// {@template pulumi_dialogflow_v3_entity_type_dialogflow_v3_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_entity_type_dialogflow_v3_args_doc}
class EntityTypeDialogflowV3Args {
  final pulumi.Input<String> agentId;
  /// Indicates whether the entity type can be automatically expanded.
  final pulumi.Input<EntityTypeAutoExpansionModeDialogflowV3>? autoExpansionMode;
  /// The human-readable name of the entity type, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EntityTypeEntity>>? entities;
  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>>? excludedPhrases;
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

  /// Creates a new [EntityTypeDialogflowV3Args].
  /// [agentId] Required.
  /// [autoExpansionMode] Indicates whether the entity type can be automatically expanded.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// [kind] Indicates the kind of entity type.
  /// [languageCode] The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  /// [project] Optional.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  EntityTypeDialogflowV3Args({
    required String agentId,
    EntityTypeAutoExpansionModeDialogflowV3? autoExpansionMode,
    required String displayName,
    bool? enableFuzzyExtraction,
    List<GoogleCloudDialogflowCxV3EntityTypeEntity>? entities,
    List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>? excludedPhrases,
    required EntityTypeKindDialogflowV3 kind,
    String? languageCode,
    String? location,
    String? name,
    String? project,
    bool? redact,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      autoExpansionMode = pulumi.Input.asOptionalInput<EntityTypeAutoExpansionModeDialogflowV3>(autoExpansionMode),
      displayName = pulumi.Input.asInput<String>(displayName),
      enableFuzzyExtraction = pulumi.Input.asOptionalInput<bool>(enableFuzzyExtraction),
      entities = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3EntityTypeEntity>>(entities),
      excludedPhrases = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>>(excludedPhrases),
      kind = pulumi.Input.asInput<EntityTypeKindDialogflowV3>(kind),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      redact = pulumi.Input.asOptionalInput<bool>(redact);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'autoExpansionMode': ?pulumi.Input.mapOptionalInputValue<EntityTypeAutoExpansionModeDialogflowV3, String>(autoExpansionMode, (value) => value.value),
      'displayName': displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3EntityTypeEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPhrases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>, List<Map<String, dynamic>>>(excludedPhrases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': pulumi.Input.mapInputValue<EntityTypeKindDialogflowV3, String>(kind, (value) => value.value),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'redact': ?redact,
    };
  }

  factory EntityTypeDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return EntityTypeDialogflowV3Args(
      agentId: map['agentId'] as String,
      autoExpansionMode: map['autoExpansionMode'] == null ? null : EntityTypeAutoExpansionModeDialogflowV3.fromValue(map['autoExpansionMode'] as String),
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null ? null : map['enableFuzzyExtraction'] as bool,
      entities: map['entities'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeEntity>(map['entities'], (value) => GoogleCloudDialogflowCxV3EntityTypeEntity.fromMap((value as Map).cast<String, dynamic>())),
      excludedPhrases: map['excludedPhrases'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>(map['excludedPhrases'], (value) => GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromMap((value as Map).cast<String, dynamic>())),
      kind: EntityTypeKindDialogflowV3.fromValue(map['kind'] as String),
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      redact: map['redact'] == null ? null : map['redact'] as bool,
    );
  }
}

