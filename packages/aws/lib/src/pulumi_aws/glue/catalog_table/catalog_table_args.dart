// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../catalog_table_open_table_format_input/catalog_table_open_table_format_input.dart';
import '../catalog_table_partition_index/catalog_table_partition_index.dart';
import '../catalog_table_partition_key/catalog_table_partition_key.dart';
import '../catalog_table_storage_descriptor/catalog_table_storage_descriptor.dart';
import '../catalog_table_target_table/catalog_table_target_table.dart';

/// The set of arguments for CatalogTable.
class CatalogTableArgs {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final Input<String>? catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  ///
  /// The following arguments are optional:
  final Input<String> databaseName;

  /// Description of the table.
  final Input<String>? description;

  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  final Input<String>? name;

  /// Configuration block for open table formats. See <span pulumi-lang-nodejs="`openTableFormatInput`" pulumi-lang-dotnet="`OpenTableFormatInput`" pulumi-lang-go="`openTableFormatInput`" pulumi-lang-python="`open_table_format_input`" pulumi-lang-yaml="`openTableFormatInput`" pulumi-lang-java="`openTableFormatInput`">`open_table_format_input`</span> below.
  final Input<CatalogTableOpenTableFormatInput>? openTableFormatInput;

  /// Owner of the table.
  final Input<String>? owner;

  /// Properties associated with this table, as a list of key-value pairs.
  final Input<Map<String, String>>? parameters;

  /// Configuration block for a maximum of 3 partition indexes. See <span pulumi-lang-nodejs="`partitionIndex`" pulumi-lang-dotnet="`PartitionIndex`" pulumi-lang-go="`partitionIndex`" pulumi-lang-python="`partition_index`" pulumi-lang-yaml="`partitionIndex`" pulumi-lang-java="`partitionIndex`">`partition_index`</span> below.
  final Input<List<CatalogTablePartitionIndex>>? partitionIndices;

  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See <span pulumi-lang-nodejs="`partitionKeys`" pulumi-lang-dotnet="`PartitionKeys`" pulumi-lang-go="`partitionKeys`" pulumi-lang-python="`partition_keys`" pulumi-lang-yaml="`partitionKeys`" pulumi-lang-java="`partitionKeys`">`partition_keys`</span> below.
  final Input<List<CatalogTablePartitionKey>>? partitionKeys;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Retention time for this table.
  final Input<int>? retention;

  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See <span pulumi-lang-nodejs="`storageDescriptor`" pulumi-lang-dotnet="`StorageDescriptor`" pulumi-lang-go="`storageDescriptor`" pulumi-lang-python="`storage_descriptor`" pulumi-lang-yaml="`storageDescriptor`" pulumi-lang-java="`storageDescriptor`">`storage_descriptor`</span> below.
  final Input<CatalogTableStorageDescriptor>? storageDescriptor;

  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  final Input<String>? tableType;

  /// Configuration block of a target table for resource linking. See <span pulumi-lang-nodejs="`targetTable`" pulumi-lang-dotnet="`TargetTable`" pulumi-lang-go="`targetTable`" pulumi-lang-python="`target_table`" pulumi-lang-yaml="`targetTable`" pulumi-lang-java="`targetTable`">`target_table`</span> below.
  final Input<CatalogTableTargetTable>? targetTable;

  /// If the table is a view, the expanded text of the view; otherwise null.
  final Input<String>? viewExpandedText;

  /// If the table is a view, the original text of the view; otherwise null.
  final Input<String>? viewOriginalText;

  CatalogTableArgs({
    this.catalogId,
    required this.databaseName,
    this.description,
    this.name,
    this.openTableFormatInput,
    this.owner,
    this.parameters,
    this.partitionIndices,
    this.partitionKeys,
    this.region,
    this.retention,
    this.storageDescriptor,
    this.tableType,
    this.targetTable,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final openTableFormatInputValue = openTableFormatInput;
    if (openTableFormatInputValue != null) {
      map['openTableFormatInput'] = Input.mapOptionalInputValue<
              CatalogTableOpenTableFormatInput, Map<String, dynamic>>(
          openTableFormatInputValue, (value) => value.toMap());
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final partitionIndicesValue = partitionIndices;
    if (partitionIndicesValue != null) {
      map['partitionIndices'] = Input.mapOptionalInputValue<
              List<CatalogTablePartitionIndex>, List<Map<String, dynamic>>>(
          partitionIndicesValue,
          (value) => Input.encodeList<CatalogTablePartitionIndex,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final partitionKeysValue = partitionKeys;
    if (partitionKeysValue != null) {
      map['partitionKeys'] = Input.mapOptionalInputValue<
              List<CatalogTablePartitionKey>, List<Map<String, dynamic>>>(
          partitionKeysValue,
          (value) =>
              Input.encodeList<CatalogTablePartitionKey, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionValue = retention;
    if (retentionValue != null) {
      map['retention'] = retentionValue;
    }
    final storageDescriptorValue = storageDescriptor;
    if (storageDescriptorValue != null) {
      map['storageDescriptor'] = Input.mapOptionalInputValue<
              CatalogTableStorageDescriptor, Map<String, dynamic>>(
          storageDescriptorValue, (value) => value.toMap());
    }
    final tableTypeValue = tableType;
    if (tableTypeValue != null) {
      map['tableType'] = tableTypeValue;
    }
    final targetTableValue = targetTable;
    if (targetTableValue != null) {
      map['targetTable'] = Input.mapOptionalInputValue<CatalogTableTargetTable,
          Map<String, dynamic>>(targetTableValue, (value) => value.toMap());
    }
    final viewExpandedTextValue = viewExpandedText;
    if (viewExpandedTextValue != null) {
      map['viewExpandedText'] = viewExpandedTextValue;
    }
    final viewOriginalTextValue = viewOriginalText;
    if (viewOriginalTextValue != null) {
      map['viewOriginalText'] = viewOriginalTextValue;
    }
    return map;
  }

  factory CatalogTableArgs.fromMap(Map<String, dynamic> map) {
    return CatalogTableArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      databaseName: Input.asInput<String>(map['databaseName']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      openTableFormatInput:
          Input.asOptionalInput<CatalogTableOpenTableFormatInput>(
              map['openTableFormatInput']),
      owner: Input.asOptionalInput<String>(map['owner']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      partitionIndices: Input.asOptionalInput<List<CatalogTablePartitionIndex>>(
          map['partitionIndices']),
      partitionKeys: Input.asOptionalInput<List<CatalogTablePartitionKey>>(
          map['partitionKeys']),
      region: Input.asOptionalInput<String>(map['region']),
      retention: Input.asOptionalInput<int>(map['retention']),
      storageDescriptor: Input.asOptionalInput<CatalogTableStorageDescriptor>(
          map['storageDescriptor']),
      tableType: Input.asOptionalInput<String>(map['tableType']),
      targetTable:
          Input.asOptionalInput<CatalogTableTargetTable>(map['targetTable']),
      viewExpandedText: Input.asOptionalInput<String>(map['viewExpandedText']),
      viewOriginalText: Input.asOptionalInput<String>(map['viewOriginalText']),
    );
  }
}
