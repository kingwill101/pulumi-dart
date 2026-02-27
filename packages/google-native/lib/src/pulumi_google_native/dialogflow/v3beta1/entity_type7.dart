import 'package:pulumi/pulumi.dart' hide Config;
import 'entity_type_args6.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_excluded_phrase_response.dart';

/// Creates an entity type in the specified agent.
class EntityType7 extends CustomResource {
  late final Output<String> agentId;

  /// Indicates whether the entity type can be automatically expanded.
  late final Output<String> autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  late final Output<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  late final Output<bool> enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  late final Output<
      List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  late final Output<
          List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse>>
      excludedPhrases;

  /// Indicates the kind of entity type.
  late final Output<String> kind;

  /// The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;
  late final Output<String> location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  late final Output<String> name;
  late final Output<String> project;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  late final Output<bool> redact;

  EntityType7(
    String name, {
    EntityTypeArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:EntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.autoExpansionMode = registerOutput<String>('autoExpansionMode');
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool>('enableFuzzyExtraction');
    this.entities = registerOutput<
            List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>>(
        'entities');
    this.excludedPhrases = registerOutput<
            List<
                GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse>>(
        'excludedPhrases');
    this.kind = registerOutput<String>('kind');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.redact = registerOutput<bool>('redact');
  }
}
