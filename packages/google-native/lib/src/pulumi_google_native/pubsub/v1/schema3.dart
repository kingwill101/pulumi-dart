import 'package:pulumi/pulumi.dart' hide Config;
import 'schema_args3.dart';

/// Creates a schema.
class Schema3 extends CustomResource {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  late final Output<String> definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  late final Output<String> name;
  late final Output<String> project;

  /// The timestamp that the revision was created.
  late final Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the schema.
  late final Output<String> revisionId;

  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  late final Output<String?> schemaId;

  /// The type of the schema definition.
  late final Output<String> type;

  Schema3(
    String name, {
    SchemaArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
