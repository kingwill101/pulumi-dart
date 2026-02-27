import 'package:pulumi/pulumi.dart';
import '../partition_index_partition_index/partition_index_partition_index.dart';
import 'partition_index_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Partition Indexes using the catalog ID (usually AWS account ID), database name, table name, and index name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/partitionIndex:PartitionIndex example 123456789012:MyDatabase:MyTable:index-name
/// ```
class PartitionIndex extends CustomResource {
  /// The catalog ID where the table resides.
  late final Output<String> catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  late final Output<String> databaseName;

  /// Configuration block for a partition index. See `partition_index` below.
  late final Output<PartitionIndexPartitionIndex> partitionIndex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  late final Output<String> tableName;

  PartitionIndex(
    String name, {
    PartitionIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/partitionIndex:PartitionIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.databaseName = registerOutput<String>('databaseName');
    this.partitionIndex =
        registerOutput<PartitionIndexPartitionIndex>('partitionIndex');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
  }
}
