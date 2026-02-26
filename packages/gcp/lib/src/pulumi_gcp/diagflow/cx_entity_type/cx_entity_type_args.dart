// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_entity_type_entity/cx_entity_type_entity.dart';
import '../cx_entity_type_excluded_phrase/cx_entity_type_excluded_phrase.dart';

/// The set of arguments for CxEntityType.
class CxEntityTypeArgs {
  /// Represents kinds of entities.
  /// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
  /// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity.
  /// Possible values are: `AUTO_EXPANSION_MODE_DEFAULT`, `AUTO_EXPANSION_MODE_UNSPECIFIED`.
  final Input<String>? autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final Input<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  final Input<bool>? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  final Input<List<CxEntityTypeEntity>> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// Structure is documented below.
  final Input<List<CxEntityTypeExcludedPhrase>>? excludedPhrases;

  /// Indicates whether the entity type can be automatically expanded.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  final Input<String> kind;

  /// The language of the following fields in entityType:
  /// EntityType.entities.value
  /// EntityType.entities.synonyms
  /// EntityType.excluded_phrases.value
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;

  /// The agent to create a entity type for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  final Input<bool>? redact;

  CxEntityTypeArgs({
    this.autoExpansionMode,
    required this.displayName,
    this.enableFuzzyExtraction,
    required this.entities,
    this.excludedPhrases,
    required this.kind,
    this.languageCode,
    this.parent,
    this.redact,
  });

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
    map['entities'] = Input.mapInputValue<List<CxEntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) => Input.encodeList<CxEntityTypeEntity, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final excludedPhrasesValue = excludedPhrases;
    if (excludedPhrasesValue != null) {
      map['excludedPhrases'] = Input.mapOptionalInputValue<
              List<CxEntityTypeExcludedPhrase>, List<Map<String, dynamic>>>(
          excludedPhrasesValue,
          (value) => Input.encodeList<CxEntityTypeExcludedPhrase,
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
      autoExpansionMode:
          Input.asOptionalInput<String>(map['autoExpansionMode']),
      displayName: Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities: Input.asInput<List<CxEntityTypeEntity>>(map['entities']),
      excludedPhrases: Input.asOptionalInput<List<CxEntityTypeExcludedPhrase>>(
          map['excludedPhrases']),
      kind: Input.asInput<String>(map['kind']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      parent: Input.asOptionalInput<String>(map['parent']),
      redact: Input.asOptionalInput<bool>(map['redact']),
    );
  }
}
