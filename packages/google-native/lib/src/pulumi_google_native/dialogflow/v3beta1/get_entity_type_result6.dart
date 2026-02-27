// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_excluded_phrase_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeResult6 {
  /// Indicates whether the entity type can be automatically expanded.
  final String autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final String displayName;

  /// Enables fuzzy entity extraction during classification.
  final bool enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse>
      excludedPhrases;

  /// Indicates the kind of entity type.
  final String kind;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final String name;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  final bool redact;

  GetEntityTypeResult6({
    required this.autoExpansionMode,
    required this.displayName,
    required this.enableFuzzyExtraction,
    required this.entities,
    required this.excludedPhrases,
    required this.kind,
    required this.name,
    required this.redact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoExpansionMode'] = autoExpansionMode;
    map['displayName'] = displayName;
    map['enableFuzzyExtraction'] = enableFuzzyExtraction;
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['excludedPhrases'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse,
        Map<String, dynamic>>(excludedPhrases, (value) => value.toMap());
    map['kind'] = kind;
    map['name'] = name;
    map['redact'] = redact;
    return map;
  }

  factory GetEntityTypeResult6.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeResult6(
      autoExpansionMode: map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] as bool,
      entities: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>(
          map['entities'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludedPhrases: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse>(
          map['excludedPhrases'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
      redact: map['redact'] as bool,
    );
  }
}
