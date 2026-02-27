// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_catalog_table_partition_index/get_catalog_table_partition_index.dart';
import '../get_catalog_table_partition_key/get_catalog_table_partition_key.dart';
import '../get_catalog_table_storage_descriptor/get_catalog_table_storage_descriptor.dart';
import '../get_catalog_table_target_table/get_catalog_table_target_table.dart';

/// Result data returned by getCatalogTable.
class GetCatalogTableResult {
  /// The ARN of the Glue Table.
  final String arn;

  /// ID of the Data Catalog in which the table resides.
  final String catalogId;

  /// Name of the catalog database that contains the target table.
  final String databaseName;

  /// Description of the table.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the target table.
  final String name;

  /// Owner of the table.
  final String owner;

  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String> parameters;

  /// Configuration block for a maximum of 3 partition indexes. See `partition_index` below.
  final List<GetCatalogTablePartitionIndex> partitionIndices;

  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partition_keys` below.
  final List<GetCatalogTablePartitionKey> partitionKeys;
  final String? queryAsOfTime;

  /// Region of the target table.
  final String region;

  /// Retention time for this table.
  final int retention;

  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storage_descriptor` below.
  final List<GetCatalogTableStorageDescriptor> storageDescriptors;

  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  final String tableType;

  /// Configuration block of a target table for resource linking. See `target_table` below.
  final List<GetCatalogTableTargetTable> targetTables;
  final int? transactionId;

  /// If the table is a view, the expanded text of the view; otherwise null.
  final String viewExpandedText;

  /// If the table is a view, the original text of the view; otherwise null.
  final String viewOriginalText;

  GetCatalogTableResult({
    required this.arn,
    required this.catalogId,
    required this.databaseName,
    required this.description,
    required this.id,
    required this.name,
    required this.owner,
    required this.parameters,
    required this.partitionIndices,
    required this.partitionKeys,
    this.queryAsOfTime,
    required this.region,
    required this.retention,
    required this.storageDescriptors,
    required this.tableType,
    required this.targetTables,
    this.transactionId,
    required this.viewExpandedText,
    required this.viewOriginalText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['catalogId'] = catalogId;
    map['databaseName'] = databaseName;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['owner'] = owner;
    map['parameters'] = parameters;
    map['partitionIndices'] = pulumi.Input.encodeList<
        GetCatalogTablePartitionIndex,
        Map<String, dynamic>>(partitionIndices, (value) => value.toMap());
    map['partitionKeys'] = pulumi.Input.encodeList<GetCatalogTablePartitionKey,
        Map<String, dynamic>>(partitionKeys, (value) => value.toMap());
    final queryAsOfTimeValue = queryAsOfTime;
    if (queryAsOfTimeValue != null) {
      map['queryAsOfTime'] = queryAsOfTimeValue;
    }
    map['region'] = region;
    map['retention'] = retention;
    map['storageDescriptors'] = pulumi.Input.encodeList<
        GetCatalogTableStorageDescriptor,
        Map<String, dynamic>>(storageDescriptors, (value) => value.toMap());
    map['tableType'] = tableType;
    map['targetTables'] = pulumi.Input.encodeList<GetCatalogTableTargetTable,
        Map<String, dynamic>>(targetTables, (value) => value.toMap());
    final transactionIdValue = transactionId;
    if (transactionIdValue != null) {
      map['transactionId'] = transactionIdValue;
    }
    map['viewExpandedText'] = viewExpandedText;
    map['viewOriginalText'] = viewOriginalText;
    return map;
  }

  factory GetCatalogTableResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableResult(
      arn: map['arn'] as String,
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      partitionIndices: pulumi.Input.decodeList<GetCatalogTablePartitionIndex>(
          map['partitionIndices'],
          (value) => GetCatalogTablePartitionIndex.fromMap(
              (value as Map).cast<String, dynamic>())),
      partitionKeys: pulumi.Input.decodeList<GetCatalogTablePartitionKey>(
          map['partitionKeys'],
          (value) => GetCatalogTablePartitionKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      queryAsOfTime:
          map['queryAsOfTime'] == null ? null : map['queryAsOfTime'] as String,
      region: map['region'] as String,
      retention: map['retention'] as int,
      storageDescriptors:
          pulumi.Input.decodeList<GetCatalogTableStorageDescriptor>(
              map['storageDescriptors'],
              (value) => GetCatalogTableStorageDescriptor.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tableType: map['tableType'] as String,
      targetTables: pulumi.Input.decodeList<GetCatalogTableTargetTable>(
          map['targetTables'],
          (value) => GetCatalogTableTargetTable.fromMap(
              (value as Map).cast<String, dynamic>())),
      transactionId:
          map['transactionId'] == null ? null : map['transactionId'] as int,
      viewExpandedText: map['viewExpandedText'] as String,
      viewOriginalText: map['viewOriginalText'] as String,
    );
  }
}
