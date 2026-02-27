import 'package:pulumi/pulumi.dart';
import '../catalog_table_open_table_format_input/catalog_table_open_table_format_input.dart';
import '../catalog_table_partition_index/catalog_table_partition_index.dart';
import '../catalog_table_partition_key/catalog_table_partition_key.dart';
import '../catalog_table_storage_descriptor/catalog_table_storage_descriptor.dart';
import '../catalog_table_target_table/catalog_table_target_table.dart';
import 'catalog_table_args.dart';

/// Provides a Glue Catalog Table Resource. You can refer to the [Glue Developer Guide](http://docs.aws.amazon.com/glue/latest/dg/populate-data-catalog.html) for a full explanation of the Glue Data Catalog functionality.
///
/// ## Example Usage
///
/// ### Basic Table
///
///
///
/// ### Parquet Table for Athena
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Tables using the catalog ID (usually AWS account ID), database name, and table name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogTable:CatalogTable MyTable 123456789012:MyDatabase:MyTable
/// ```
class CatalogTable extends CustomResource {
  /// The ARN of the Glue Table.
  late final Output<String> arn;

  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  late final Output<String> catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  ///
  /// The following arguments are optional:
  late final Output<String> databaseName;

  /// Description of the table.
  late final Output<String?> description;

  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  late final Output<String> name;

  /// Configuration block for open table formats. See `open_table_format_input` below.
  late final Output<CatalogTableOpenTableFormatInput?> openTableFormatInput;

  /// Owner of the table.
  late final Output<String?> owner;

  /// Properties associated with this table, as a list of key-value pairs.
  late final Output<Map<String, String>?> parameters;

  /// Configuration block for a maximum of 3 partition indexes. See `partition_index` below.
  late final Output<List<CatalogTablePartitionIndex>> partitionIndices;

  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partition_keys` below.
  late final Output<List<CatalogTablePartitionKey>?> partitionKeys;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Retention time for this table.
  late final Output<int?> retention;

  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storage_descriptor` below.
  late final Output<CatalogTableStorageDescriptor?> storageDescriptor;

  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  late final Output<String?> tableType;

  /// Configuration block of a target table for resource linking. See `target_table` below.
  late final Output<CatalogTableTargetTable?> targetTable;

  /// If the table is a view, the expanded text of the view; otherwise null.
  late final Output<String?> viewExpandedText;

  /// If the table is a view, the original text of the view; otherwise null.
  late final Output<String?> viewOriginalText;

  CatalogTable(
    String name, {
    CatalogTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogTable:CatalogTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogId = registerOutput<String>('catalogId');
    this.databaseName = registerOutput<String>('databaseName');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.openTableFormatInput =
        registerOutput<CatalogTableOpenTableFormatInput?>(
            'openTableFormatInput');
    this.owner = registerOutput<String?>('owner');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.partitionIndices =
        registerOutput<List<CatalogTablePartitionIndex>>('partitionIndices');
    this.partitionKeys =
        registerOutput<List<CatalogTablePartitionKey>?>('partitionKeys');
    this.region = registerOutput<String>('region');
    this.retention = registerOutput<int?>('retention');
    this.storageDescriptor =
        registerOutput<CatalogTableStorageDescriptor?>('storageDescriptor');
    this.tableType = registerOutput<String?>('tableType');
    this.targetTable = registerOutput<CatalogTableTargetTable?>('targetTable');
    this.viewExpandedText = registerOutput<String?>('viewExpandedText');
    this.viewOriginalText = registerOutput<String?>('viewOriginalText');
  }
}
