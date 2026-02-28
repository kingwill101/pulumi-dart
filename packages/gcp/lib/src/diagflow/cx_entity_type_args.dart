// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_entity_type_entity.dart';
import 'cx_entity_type_excluded_phrase.dart';

/// {@template pulumi_diagflow_cx_entity_type_cx_entity_type_args_doc}
/// The set of arguments for CxEntityType.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_entity_type_cx_entity_type_args_doc}
class CxEntityTypeArgs {
  /// Represents kinds of entities.
  /// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
  /// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity.
  /// Possible values are: `AUTO_EXPANSION_MODE_DEFAULT`, `AUTO_EXPANSION_MODE_UNSPECIFIED`.
  final pulumi.Input<String>? autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  final pulumi.Input<bool>? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  final pulumi.Input<List<CxEntityTypeEntity>> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<List<CxEntityTypeExcludedPhrase>>? excludedPhrases;

  /// Indicates whether the entity type can be automatically expanded.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  final pulumi.Input<String> kind;

  /// The language of the following fields in entityType:
  /// EntityType.entities.value
  /// EntityType.entities.synonyms
  /// EntityType.excluded_phrases.value
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;

  /// The agent to create a entity type for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  final pulumi.Input<bool>? redact;

  /// Creates a new [CxEntityTypeArgs].
  /// [autoExpansionMode] Represents kinds of entities.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// [kind] Indicates whether the entity type can be automatically expanded.
  /// [languageCode] The language of the following fields in entityType:
  /// [parent] The agent to create a entity type for.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  CxEntityTypeArgs({
    String? autoExpansionMode,
    required String displayName,
    bool? enableFuzzyExtraction,
    required List<CxEntityTypeEntity> entities,
    List<CxEntityTypeExcludedPhrase>? excludedPhrases,
    required String kind,
    String? languageCode,
    String? parent,
    bool? redact,
  })  : autoExpansionMode =
            pulumi.Input.asOptionalInput<String>(autoExpansionMode),
        displayName = pulumi.Input.asInput<String>(displayName),
        enableFuzzyExtraction =
            pulumi.Input.asOptionalInput<bool>(enableFuzzyExtraction),
        entities = pulumi.Input.asInput<List<CxEntityTypeEntity>>(entities),
        excludedPhrases =
            pulumi.Input.asOptionalInput<List<CxEntityTypeExcludedPhrase>>(
                excludedPhrases),
        kind = pulumi.Input.asInput<String>(kind),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        parent = pulumi.Input.asOptionalInput<String>(parent),
        redact = pulumi.Input.asOptionalInput<bool>(redact);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoExpansionModeValue = autoExpansionMode;
    if (autoExpansionModeValue != null) {
      map['autoExpansionMode'] = autoExpansionModeValue;
    }
    map['displayName'] = displayName;
    final enableFuzzyExtractionValue = enableFuzzyExtraction;
    if (enableFuzzyExtractionValue != null) {
      map['enableFuzzyExtraction'] = enableFuzzyExtractionValue;
    }
    map['entities'] = pulumi.Input.mapInputValue<List<CxEntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) =>
            pulumi.Input.encodeList<CxEntityTypeEntity, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final excludedPhrasesValue = excludedPhrases;
    if (excludedPhrasesValue != null) {
      map['excludedPhrases'] = pulumi.Input.mapOptionalInputValue<
              List<CxEntityTypeExcludedPhrase>, List<Map<String, dynamic>>>(
          excludedPhrasesValue,
          (value) => pulumi.Input.encodeList<CxEntityTypeExcludedPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['kind'] = kind;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final redactValue = redact;
    if (redactValue != null) {
      map['redact'] = redactValue;
    }
    return map;
  }

  factory CxEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return CxEntityTypeArgs(
      autoExpansionMode: map['autoExpansionMode'] == null
          ? null
          : map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] == null
          ? null
          : map['enableFuzzyExtraction'] as bool,
      entities: pulumi.Input.decodeList<CxEntityTypeEntity>(
          map['entities'],
          (value) => CxEntityTypeEntity.fromMap(
              (value as Map).cast<String, dynamic>())),
      excludedPhrases: map['excludedPhrases'] == null
          ? null
          : pulumi.Input.decodeList<CxEntityTypeExcludedPhrase>(
              map['excludedPhrases'],
              (value) => CxEntityTypeExcludedPhrase.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      redact: map['redact'] == null ? null : map['redact'] as bool,
    );
  }
}
