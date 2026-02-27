import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_replication_rule/table_replication_rule.dart';
import 'table_replication_args.dart';

/// Manages Amazon S3 Tables Table Replication configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Replication using the `table_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableReplication:TableReplication example 'arn:aws:s3tables:us-west-2:123456789012:table/example-table'
/// ```
class TableReplication extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  late final pulumi.Output<String> role;

  /// Replication rules. See Rule below for more details.
  late final pulumi.Output<TableReplicationRule?> rule;

  /// ARN referencing the Table that owns this replication configuration.
  late final pulumi.Output<String> tableArn;
  late final pulumi.Output<String> versionToken;

  TableReplication(
    String name, {
    TableReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableReplication:TableReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rule = registerOutput<TableReplicationRule?>('rule');
    this.tableArn = registerOutput<String>('tableArn');
    this.versionToken = registerOutput<String>('versionToken');
  }
}
