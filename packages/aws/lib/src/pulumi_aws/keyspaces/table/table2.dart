import 'package:pulumi/pulumi.dart';
import '../table_capacity_specification/table_capacity_specification.dart';
import '../table_client_side_timestamps/table_client_side_timestamps.dart';
import '../table_comment/table_comment.dart';
import '../table_encryption_specification/table_encryption_specification.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery2.dart';
import '../table_schema_definition/table_schema_definition.dart';
import '../table_ttl/table_ttl2.dart';
import 'table_args2.dart';

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
class Table2 extends CustomResource {
  /// The ARN of the table.
  late final Output<String> arn;

  /// Specifies the read/write throughput capacity mode for the table.
  late final Output<TableCapacitySpecification> capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  late final Output<TableClientSideTimestamps?> clientSideTimestamps;

  /// A description of the table.
  late final Output<TableComment> comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  late final Output<int?> defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  late final Output<TableEncryptionSpecification> encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  late final Output<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  late final Output<TablePointInTimeRecovery2> pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Describes the schema of the table.
  late final Output<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  late final Output<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  late final Output<TableTtl2?> ttl;

  Table2(
    String name, {
    TableArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:keyspaces/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
        registerOutput<TablePointInTimeRecovery2>('pointInTimeRecovery');
    this.region = registerOutput<String>('region');
    this.schemaDefinition =
        registerOutput<TableSchemaDefinition>('schemaDefinition');
    this.tableName = registerOutput<String>('tableName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<TableTtl2?>('ttl');
  }
}
