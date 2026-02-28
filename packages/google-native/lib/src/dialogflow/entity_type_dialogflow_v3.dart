import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_dialogflow_v3_args.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_entity_response.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_excluded_phrase_response.dart';

/// Creates an entity type in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class EntityTypeDialogflowV3 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;
  /// Indicates whether the entity type can be automatically expanded.
  late final pulumi.Output<String> autoExpansionMode;
  /// The human-readable name of the entity type, unique within the agent.
  late final pulumi.Output<String> displayName;
  /// Enables fuzzy entity extraction during classification.
  late final pulumi.Output<bool> enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  late final pulumi.Output<List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>> entities;
  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  late final pulumi.Output<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse>> excludedPhrases;
  /// Indicates the kind of entity type.
  late final pulumi.Output<String> kind;
  /// The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  late final pulumi.Output<bool> redact;

  /// Creates a new [EntityTypeDialogflowV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityTypeDialogflowV3]. {@macro pulumi_dialogflow_v3_entity_type_dialogflow_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityTypeDialogflowV3(
    String name, {
    EntityTypeDialogflowV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:EntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.autoExpansionMode = registerOutput<String>('autoExpansionMode');
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool>('enableFuzzyExtraction');
    this.entities = registerOutput<List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>>('entities');
    this.excludedPhrases = registerOutput<List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse>>('excludedPhrases');
    this.kind = registerOutput<String>('kind');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.redact = registerOutput<bool>('redact');
  }
}
