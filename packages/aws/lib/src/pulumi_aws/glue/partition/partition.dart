import 'package:pulumi/pulumi.dart' as pulumi;
import '../partition_storage_descriptor/partition_storage_descriptor.dart';
import 'partition_args.dart';

/// Provides a Glue Partition Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Partitions using the catalog ID (usually AWS account ID), database name, table name and partition values. For example:
///
/// ```sh
/// $ pulumi import aws:glue/partition:Partition part 123456789012:MyDatabase:MyTable:val1#val2
/// ```
class Partition extends pulumi.CustomResource {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  late final pulumi.Output<String> catalogId;

  /// The time at which the partition was created.
  late final pulumi.Output<String> creationTime;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  late final pulumi.Output<String> databaseName;

  /// The last time at which the partition was accessed.
  late final pulumi.Output<String> lastAccessedTime;

  /// The last time at which column statistics were computed for this partition.
  late final pulumi.Output<String> lastAnalyzedTime;

  /// Properties associated with this table, as a list of key-value pairs.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// The values that define the partition.
  late final pulumi.Output<List<String>> partitionValues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  late final pulumi.Output<PartitionStorageDescriptor?> storageDescriptor;
  late final pulumi.Output<String> tableName;

  Partition(
    String name, {
    PartitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/partition:Partition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.creationTime = registerOutput<String>('creationTime');
    this.databaseName = registerOutput<String>('databaseName');
    this.lastAccessedTime = registerOutput<String>('lastAccessedTime');
    this.lastAnalyzedTime = registerOutput<String>('lastAnalyzedTime');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.partitionValues = registerOutput<List<String>>('partitionValues');
    this.region = registerOutput<String>('region');
    this.storageDescriptor =
        registerOutput<PartitionStorageDescriptor?>('storageDescriptor');
    this.tableName = registerOutput<String>('tableName');
  }
}
