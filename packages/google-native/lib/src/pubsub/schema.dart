import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// Creates a schema.
class Schema extends pulumi.CustomResource {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  late final pulumi.Output<String> definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The timestamp that the revision was created.
  late final pulumi.Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the schema.
  late final pulumi.Output<String> revisionId;

  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  late final pulumi.Output<String?> schemaId;

  /// The type of the schema definition.
  late final pulumi.Output<String> type;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_pubsub_v1_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.definition = registerOutput<String>('definition');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.schemaId = registerOutput<String?>('schemaId');
    this.type = registerOutput<String>('type');
  }
}
