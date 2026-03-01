// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input.dart';
import 'catalog_table_partition_index.dart';
import 'catalog_table_partition_key.dart';
import 'catalog_table_storage_descriptor.dart';
import 'catalog_table_target_table.dart';

/// {@template pulumi_glue_catalog_table_catalog_table_args_doc}
/// The set of arguments for CatalogTable.
/// {@endtemplate}
/// {@macro pulumi_glue_catalog_table_catalog_table_args_doc}
class CatalogTableArgs {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final pulumi.Input<String>? catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> databaseName;
  /// Description of the table.
  final pulumi.Input<String>? description;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  final pulumi.Input<String>? name;
  /// Configuration block for open table formats. See `open_table_format_input` below.
  final pulumi.Input<CatalogTableOpenTableFormatInput>? openTableFormatInput;
  /// Owner of the table.
  final pulumi.Input<String>? owner;
  /// Properties associated with this table, as a list of key-value pairs.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Configuration block for a maximum of 3 partition indexes. See `partition_index` below.
  final pulumi.Input<List<CatalogTablePartitionIndex>>? partitionIndices;
  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partition_keys` below.
  final pulumi.Input<List<CatalogTablePartitionKey>>? partitionKeys;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Retention time for this table.
  final pulumi.Input<int>? retention;
  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storage_descriptor` below.
  final pulumi.Input<CatalogTableStorageDescriptor>? storageDescriptor;
  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  final pulumi.Input<String>? tableType;
  /// Configuration block of a target table for resource linking. See `target_table` below.
  final pulumi.Input<CatalogTableTargetTable>? targetTable;
  /// If the table is a view, the expanded text of the view; otherwise null.
  final pulumi.Input<String>? viewExpandedText;
  /// If the table is a view, the original text of the view; otherwise null.
  final pulumi.Input<String>? viewOriginalText;

  /// Creates a new [CatalogTableArgs].
  /// [catalogId] ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [description] Description of the table.
  /// [name] Name of the table. For Hive compatibility, this must be entirely lowercase.
  /// [openTableFormatInput] Configuration block for open table formats. See `open_table_format_input` below.
  /// [owner] Owner of the table.
  /// [parameters] Properties associated with this table, as a list of key-value pairs.
  /// [partitionIndices] Configuration block for a maximum of 3 partition indexes. See `partition_index` below.
  /// [partitionKeys] Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partition_keys` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retention] Retention time for this table.
  /// [storageDescriptor] Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storage_descriptor` below.
  /// [tableType] Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  /// [targetTable] Configuration block of a target table for resource linking. See `target_table` below.
  /// [viewExpandedText] If the table is a view, the expanded text of the view; otherwise null.
  /// [viewOriginalText] If the table is a view, the original text of the view; otherwise null.
  CatalogTableArgs({
    pulumi.Output<String>? catalogId,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<CatalogTableOpenTableFormatInput>? openTableFormatInput,
    pulumi.Output<String>? owner,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<CatalogTablePartitionIndex>>? partitionIndices,
    pulumi.Output<List<CatalogTablePartitionKey>>? partitionKeys,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retention,
    pulumi.Output<CatalogTableStorageDescriptor>? storageDescriptor,
    pulumi.Output<String>? tableType,
    pulumi.Output<CatalogTableTargetTable>? targetTable,
    pulumi.Output<String>? viewExpandedText,
    pulumi.Output<String>? viewOriginalText,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      openTableFormatInput = pulumi.Input.asOptionalInput<CatalogTableOpenTableFormatInput>(openTableFormatInput),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      partitionIndices = pulumi.Input.asOptionalInput<List<CatalogTablePartitionIndex>>(partitionIndices),
      partitionKeys = pulumi.Input.asOptionalInput<List<CatalogTablePartitionKey>>(partitionKeys),
      region = pulumi.Input.asOptionalInput<String>(region),
      retention = pulumi.Input.asOptionalInput<int>(retention),
      storageDescriptor = pulumi.Input.asOptionalInput<CatalogTableStorageDescriptor>(storageDescriptor),
      tableType = pulumi.Input.asOptionalInput<String>(tableType),
      targetTable = pulumi.Input.asOptionalInput<CatalogTableTargetTable>(targetTable),
      viewExpandedText = pulumi.Input.asOptionalInput<String>(viewExpandedText),
      viewOriginalText = pulumi.Input.asOptionalInput<String>(viewOriginalText);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'description': ?description,
      'name': ?name,
      'openTableFormatInput': ?pulumi.Input.mapOptionalInputValue<CatalogTableOpenTableFormatInput, Map<String, dynamic>>(openTableFormatInput, (value) => value.toMap()),
      'owner': ?owner,
      'parameters': ?parameters,
      'partitionIndices': ?pulumi.Input.mapOptionalInputValue<List<CatalogTablePartitionIndex>, List<Map<String, dynamic>>>(partitionIndices, (value) => pulumi.Input.encodeList<CatalogTablePartitionIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionKeys': ?pulumi.Input.mapOptionalInputValue<List<CatalogTablePartitionKey>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<CatalogTablePartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'retention': ?retention,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<CatalogTableStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableType': ?tableType,
      'targetTable': ?pulumi.Input.mapOptionalInputValue<CatalogTableTargetTable, Map<String, dynamic>>(targetTable, (value) => value.toMap()),
      'viewExpandedText': ?viewExpandedText,
      'viewOriginalText': ?viewOriginalText,
    };
  }

  factory CatalogTableArgs.fromMap(Map<String, dynamic> map) {
    return CatalogTableArgs(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openTableFormatInput: map['openTableFormatInput'] == null ? null : pulumi.Output.create<CatalogTableOpenTableFormatInput>(CatalogTableOpenTableFormatInput.fromMap((map['openTableFormatInput'] as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      partitionIndices: map['partitionIndices'] == null ? null : pulumi.Output.create<List<CatalogTablePartitionIndex>>(pulumi.Input.decodeList<CatalogTablePartitionIndex>(map['partitionIndices'], (value) => CatalogTablePartitionIndex.fromMap((value as Map).cast<String, dynamic>()))),
      partitionKeys: map['partitionKeys'] == null ? null : pulumi.Output.create<List<CatalogTablePartitionKey>>(pulumi.Input.decodeList<CatalogTablePartitionKey>(map['partitionKeys'], (value) => CatalogTablePartitionKey.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<int>(map['retention'] as int),
      storageDescriptor: map['storageDescriptor'] == null ? null : pulumi.Output.create<CatalogTableStorageDescriptor>(CatalogTableStorageDescriptor.fromMap((map['storageDescriptor'] as Map).cast<String, dynamic>())),
      tableType: map['tableType'] == null ? null : pulumi.Output.create<String>(map['tableType'] as String),
      targetTable: map['targetTable'] == null ? null : pulumi.Output.create<CatalogTableTargetTable>(CatalogTableTargetTable.fromMap((map['targetTable'] as Map).cast<String, dynamic>())),
      viewExpandedText: map['viewExpandedText'] == null ? null : pulumi.Output.create<String>(map['viewExpandedText'] as String),
      viewOriginalText: map['viewOriginalText'] == null ? null : pulumi.Output.create<String>(map['viewOriginalText'] as String),
    );
  }
}

