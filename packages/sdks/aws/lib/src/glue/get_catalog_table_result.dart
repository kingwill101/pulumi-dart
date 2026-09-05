// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_table_partition_index.dart';
import 'get_catalog_table_partition_key.dart';
import 'get_catalog_table_storage_descriptor.dart';
import 'get_catalog_table_target_table.dart';

/// Result data returned by getCatalogTable.
class GetCatalogTableResult {
  /// The ARN of the Glue Table.
  final String? arn;
  /// ID of the Data Catalog in which the table resides.
  final String? catalogId;
  /// Name of the catalog database that contains the target table.
  final String? databaseName;
  /// Description of the table.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the target table.
  final String? name;
  /// Owner of the table.
  final String? owner;
  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String>? parameters;
  /// Configuration block for a maximum of 3 partition indexes. See `partitionIndex` below.
  final List<GetCatalogTablePartitionIndex>? partitionIndices;
  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partitionKeys` below.
  final List<GetCatalogTablePartitionKey>? partitionKeys;
  final String? queryAsOfTime;
  /// Region of the target table.
  final String? region;
  /// Retention time for this table.
  final int? retention;
  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storageDescriptor` below.
  final List<GetCatalogTableStorageDescriptor>? storageDescriptors;
  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  final String? tableType;
  /// Configuration block of a target table for resource linking. See `targetTable` below.
  final List<GetCatalogTableTargetTable>? targetTables;
  final int? transactionId;
  /// If the table is a view, the expanded text of the view; otherwise null.
  final String? viewExpandedText;
  /// If the table is a view, the original text of the view; otherwise null.
  final String? viewOriginalText;

  /// Creates a new [GetCatalogTableResult].
  /// [arn] The ARN of the Glue Table.
  /// [catalogId] ID of the Data Catalog in which the table resides.
  /// [databaseName] Name of the catalog database that contains the target table.
  /// [description] Description of the table.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the target table.
  /// [owner] Owner of the table.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [partitionIndices] Configuration block for a maximum of 3 partition indexes. See `partitionIndex` below.
  /// [partitionKeys] Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partitionKeys` below.
  /// [queryAsOfTime] Optional.
  /// [region] Region of the target table.
  /// [retention] Retention time for this table.
  /// [storageDescriptors] Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storageDescriptor` below.
  /// [tableType] Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  /// [targetTables] Configuration block of a target table for resource linking. See `targetTable` below.
  /// [transactionId] Optional.
  /// [viewExpandedText] If the table is a view, the expanded text of the view; otherwise null.
  /// [viewOriginalText] If the table is a view, the original text of the view; otherwise null.
  const GetCatalogTableResult({
    this.arn,
    this.catalogId,
    this.databaseName,
    this.description,
    this.id,
    this.name,
    this.owner,
    this.parameters,
    this.partitionIndices,
    this.partitionKeys,
    this.queryAsOfTime,
    this.region,
    this.retention,
    this.storageDescriptors,
    this.tableType,
    this.targetTables,
    this.transactionId,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'catalogId': ?catalogId,
      'databaseName': ?databaseName,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'owner': ?owner,
      'parameters': ?parameters,
      'partitionIndices': ?(() { final guardedValue = partitionIndices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogTablePartitionIndex, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'partitionKeys': ?(() { final guardedValue = partitionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogTablePartitionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queryAsOfTime': ?queryAsOfTime,
      'region': ?region,
      'retention': ?retention,
      'storageDescriptors': ?(() { final guardedValue = storageDescriptors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogTableStorageDescriptor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tableType': ?tableType,
      'targetTables': ?(() { final guardedValue = targetTables; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogTableTargetTable, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'transactionId': ?transactionId,
      'viewExpandedText': ?viewExpandedText,
      'viewOriginalText': ?viewOriginalText,
    };
  }

  factory GetCatalogTableResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      partitionIndices: (() { final guardedValue = map['partitionIndices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogTablePartitionIndex>(guardedValue, (value) => GetCatalogTablePartitionIndex.fromMap((value as Map).cast<String, dynamic>())); })(),
      partitionKeys: (() { final guardedValue = map['partitionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogTablePartitionKey>(guardedValue, (value) => GetCatalogTablePartitionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      queryAsOfTime: (() { final guardedValue = map['queryAsOfTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageDescriptors: (() { final guardedValue = map['storageDescriptors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogTableStorageDescriptor>(guardedValue, (value) => GetCatalogTableStorageDescriptor.fromMap((value as Map).cast<String, dynamic>())); })(),
      tableType: (() { final guardedValue = map['tableType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetTables: (() { final guardedValue = map['targetTables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogTableTargetTable>(guardedValue, (value) => GetCatalogTableTargetTable.fromMap((value as Map).cast<String, dynamic>())); })(),
      transactionId: (() { final guardedValue = map['transactionId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      viewExpandedText: (() { final guardedValue = map['viewExpandedText']; if (guardedValue == null) return null; return guardedValue as String; })(),
      viewOriginalText: (() { final guardedValue = map['viewOriginalText']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
