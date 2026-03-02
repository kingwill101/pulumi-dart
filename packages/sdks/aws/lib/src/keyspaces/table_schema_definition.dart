// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_schema_definition_clustering_key.dart';
import 'table_schema_definition_column.dart';
import 'table_schema_definition_partition_key.dart';
import 'table_schema_definition_static_column.dart';

class TableSchemaDefinition {
  /// The columns that are part of the clustering key of the table.
  final pulumi.Input<List<TableSchemaDefinitionClusteringKey>>? clusteringKeys;
  /// The regular columns of the table.
  final pulumi.Input<List<TableSchemaDefinitionColumn>> columns;
  /// The columns that are part of the partition key of the table .
  final pulumi.Input<List<TableSchemaDefinitionPartitionKey>> partitionKeys;
  /// The columns that have been defined as `STATIC`. Static columns store values that are shared by all rows in the same partition.
  final pulumi.Input<List<TableSchemaDefinitionStaticColumn>>? staticColumns;

  /// Creates a new [TableSchemaDefinition].
  /// [clusteringKeys] The columns that are part of the clustering key of the table.
  /// [columns] The regular columns of the table.
  /// [partitionKeys] The columns that are part of the partition key of the table .
  /// [staticColumns] The columns that have been defined as `STATIC`. Static columns store values that are shared by all rows in the same partition.
  TableSchemaDefinition({
    this.clusteringKeys,
    required this.columns,
    required this.partitionKeys,
    this.staticColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusteringKeys': ?pulumi.Input.mapOptionalInputValue<List<TableSchemaDefinitionClusteringKey>, List<Map<String, dynamic>>>(clusteringKeys, (value) => pulumi.Input.encodeList<TableSchemaDefinitionClusteringKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columns': pulumi.Input.mapInputValue<List<TableSchemaDefinitionColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<TableSchemaDefinitionColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionKeys': pulumi.Input.mapInputValue<List<TableSchemaDefinitionPartitionKey>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<TableSchemaDefinitionPartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticColumns': ?pulumi.Input.mapOptionalInputValue<List<TableSchemaDefinitionStaticColumn>, List<Map<String, dynamic>>>(staticColumns, (value) => pulumi.Input.encodeList<TableSchemaDefinitionStaticColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableSchemaDefinition.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinition(
      clusteringKeys: map['clusteringKeys'] == null ? null : ((pulumi.Input.decodeList<TableSchemaDefinitionClusteringKey>(map['clusteringKeys']!, (value) => TableSchemaDefinitionClusteringKey.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      columns: (pulumi.Input.decodeList<TableSchemaDefinitionColumn>(map['columns']!, (value) => TableSchemaDefinitionColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionKeys: (pulumi.Input.decodeList<TableSchemaDefinitionPartitionKey>(map['partitionKeys']!, (value) => TableSchemaDefinitionPartitionKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      staticColumns: map['staticColumns'] == null ? null : ((pulumi.Input.decodeList<TableSchemaDefinitionStaticColumn>(map['staticColumns']!, (value) => TableSchemaDefinitionStaticColumn.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

