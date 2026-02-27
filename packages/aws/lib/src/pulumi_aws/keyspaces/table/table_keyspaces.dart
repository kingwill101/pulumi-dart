import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_capacity_specification/table_capacity_specification.dart';
import '../table_client_side_timestamps/table_client_side_timestamps.dart';
import '../table_comment/table_comment.dart';
import '../table_encryption_specification/table_encryption_specification.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery_keyspaces.dart';
import '../table_schema_definition/table_schema_definition.dart';
import '../table_ttl/table_ttl_keyspaces.dart';
import 'table_keyspaces_args.dart';

/// Provides a Keyspaces Table.
///
/// More information about Keyspaces tables can be found in the [Keyspaces Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a table using the `keyspace_name` and `table_name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:keyspaces/table:Table example my_keyspace/my_table
/// ```
class TableKeyspaces extends pulumi.CustomResource {
  /// The ARN of the table.
  late final pulumi.Output<String> arn;

  /// Specifies the read/write throughput capacity mode for the table.
  late final pulumi.Output<TableCapacitySpecification> capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  late final pulumi.Output<TableClientSideTimestamps?> clientSideTimestamps;

  /// A description of the table.
  late final pulumi.Output<TableComment> comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  late final pulumi.Output<int?> defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  late final pulumi.Output<TableEncryptionSpecification>
      encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  late final pulumi.Output<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  late final pulumi.Output<TablePointInTimeRecoveryKeyspaces>
      pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Describes the schema of the table.
  late final pulumi.Output<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  late final pulumi.Output<TableTtlKeyspaces?> ttl;

  TableKeyspaces(
    String name, {
    TableKeyspacesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:keyspaces/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacitySpecification =
        registerOutput<TableCapacitySpecification>('capacitySpecification');
    this.clientSideTimestamps =
        registerOutput<TableClientSideTimestamps?>('clientSideTimestamps');
    this.comment = registerOutput<TableComment>('comment');
    this.defaultTimeToLive = registerOutput<int?>('defaultTimeToLive');
    this.encryptionSpecification =
        registerOutput<TableEncryptionSpecification>('encryptionSpecification');
    this.keyspaceName = registerOutput<String>('keyspaceName');
    this.pointInTimeRecovery =
        registerOutput<TablePointInTimeRecoveryKeyspaces>(
            'pointInTimeRecovery');
    this.region = registerOutput<String>('region');
    this.schemaDefinition =
        registerOutput<TableSchemaDefinition>('schemaDefinition');
    this.tableName = registerOutput<String>('tableName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<TableTtlKeyspaces?>('ttl');
  }
}
