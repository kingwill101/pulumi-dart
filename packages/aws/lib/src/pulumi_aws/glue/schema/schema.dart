import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// Provides a Glue Schema resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Glue schema.
///
///
/// Using `pulumi import`, import Glue Registries using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/schema:Schema example arn:aws:glue:us-west-2:123456789012:schema/example/example
/// ```
class Schema extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the schema.
  late final pulumi.Output<String> arn;

  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  late final pulumi.Output<String> compatibility;

  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  late final pulumi.Output<String> dataFormat;

  /// A description of the schema.
  late final pulumi.Output<String?> description;

  /// The latest version of the schema associated with the returned schema definition.
  late final pulumi.Output<int> latestSchemaVersion;

  /// The next version of the schema associated with the returned schema definition.
  late final pulumi.Output<int> nextSchemaVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the Glue Registry to create the schema in.
  late final pulumi.Output<String> registryArn;

  /// The name of the Glue Registry.
  late final pulumi.Output<String> registryName;

  /// The version number of the checkpoint (the last time the compatibility mode was changed).
  late final pulumi.Output<int> schemaCheckpoint;

  /// The schema definition using the `data_format` setting for `schema_name`.
  late final pulumi.Output<String> schemaDefinition;

  /// The Name of the schema.
  late final pulumi.Output<String> schemaName;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.compatibility = registerOutput<String>('compatibility');
    this.dataFormat = registerOutput<String>('dataFormat');
    this.description = registerOutput<String?>('description');
    this.latestSchemaVersion = registerOutput<int>('latestSchemaVersion');
    this.nextSchemaVersion = registerOutput<int>('nextSchemaVersion');
    this.region = registerOutput<String>('region');
    this.registryArn = registerOutput<String>('registryArn');
    this.registryName = registerOutput<String>('registryName');
    this.schemaCheckpoint = registerOutput<int>('schemaCheckpoint');
    this.schemaDefinition = registerOutput<String>('schemaDefinition');
    this.schemaName = registerOutput<String>('schemaName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
