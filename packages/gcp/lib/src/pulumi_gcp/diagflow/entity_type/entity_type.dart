import 'package:pulumi/pulumi.dart';
import '../entity_type_entity/entity_type_entity.dart';
import 'entity_type_args.dart';

/// Represents an entity type. Entity types serve as a tool for extracting parameter values from natural language queries.
///
///
/// To get more information about EntityType, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Entity Type Basic
///
///
///
///
/// ## Import
///
/// EntityType can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EntityType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/entityType:EntityType default {{name}}
/// ```
class EntityType extends CustomResource {
  /// The name of this entity type to be displayed on the console.
  late final Output<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  late final Output<bool?> enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  late final Output<List<EntityTypeEntity>?> entities;

  /// Indicates the kind of entity type.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
  /// types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  late final Output<String> kind;

  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/agent/entityTypes/<Entity type ID>.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  EntityType(
    String name, {
    EntityTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/entityType:EntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool?>('enableFuzzyExtraction');
    this.entities = registerOutput<List<EntityTypeEntity>?>('entities');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
