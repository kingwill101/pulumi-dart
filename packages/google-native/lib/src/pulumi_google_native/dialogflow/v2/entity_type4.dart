import 'package:pulumi/pulumi.dart';
import 'entity_type_args3.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity_response.dart';

/// Creates an entity type in the specified agent. Note: You should always train an agent prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
/// Auto-naming is currently not supported for this resource.
class EntityType4 extends CustomResource {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  late final Output<String> autoExpansionMode;

  /// The name of the entity type.
  late final Output<String> displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  late final Output<bool> enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  late final Output<List<GoogleCloudDialogflowV2EntityTypeEntityResponse>>
      entities;

  /// Indicates the kind of entity type.
  late final Output<String> kind;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  late final Output<String?> languageCode;
  late final Output<String> location;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  late final Output<String> name;
  late final Output<String> project;

  EntityType4(
    String name, {
    EntityTypeArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:EntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoExpansionMode = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enableFuzzyExtraction = Output.createUnknown<bool>();
    this.entities = Output.createUnknown<
        List<GoogleCloudDialogflowV2EntityTypeEntityResponse>>();
    this.kind = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
