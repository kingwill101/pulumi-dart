// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_schema_definition_clustering_key/table_schema_definition_clustering_key.dart';
import '../table_schema_definition_column/table_schema_definition_column.dart';
import '../table_schema_definition_partition_key/table_schema_definition_partition_key.dart';
import '../table_schema_definition_static_column/table_schema_definition_static_column.dart';

class TableSchemaDefinition {
  /// The columns that are part of the clustering key of the table.
  final List<TableSchemaDefinitionClusteringKey>? clusteringKeys;

  /// The regular columns of the table.
  final List<TableSchemaDefinitionColumn> columns;

  /// The columns that are part of the partition key of the table .
  final List<TableSchemaDefinitionPartitionKey> partitionKeys;

  /// The columns that have been defined as `STATIC`. Static columns store values that are shared by all rows in the same partition.
  final List<TableSchemaDefinitionStaticColumn>? staticColumns;

  TableSchemaDefinition({
    this.clusteringKeys,
    required this.columns,
    required this.partitionKeys,
    this.staticColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusteringKeysValue = clusteringKeys;
    if (clusteringKeysValue != null) {
      map['clusteringKeys'] = Input.encodeList<
          TableSchemaDefinitionClusteringKey,
          Map<String, dynamic>>(clusteringKeysValue, (value) => value.toMap());
    }
    map['columns'] =
        Input.encodeList<TableSchemaDefinitionColumn, Map<String, dynamic>>(
            columns, (value) => value.toMap());
    map['partitionKeys'] = Input.encodeList<TableSchemaDefinitionPartitionKey,
        Map<String, dynamic>>(partitionKeys, (value) => value.toMap());
    final staticColumnsValue = staticColumns;
    if (staticColumnsValue != null) {
      map['staticColumns'] = Input.encodeList<TableSchemaDefinitionStaticColumn,
          Map<String, dynamic>>(staticColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableSchemaDefinition.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinition(
      clusteringKeys: map['clusteringKeys'] == null
          ? null
          : Input.decodeList<TableSchemaDefinitionClusteringKey>(
              map['clusteringKeys'],
              (value) => TableSchemaDefinitionClusteringKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      columns: Input.decodeList<TableSchemaDefinitionColumn>(
          map['columns'],
          (value) => TableSchemaDefinitionColumn.fromMap(
              (value as Map).cast<String, dynamic>())),
      partitionKeys: Input.decodeList<TableSchemaDefinitionPartitionKey>(
          map['partitionKeys'],
          (value) => TableSchemaDefinitionPartitionKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      staticColumns: map['staticColumns'] == null
          ? null
          : Input.decodeList<TableSchemaDefinitionStaticColumn>(
              map['staticColumns'],
              (value) => TableSchemaDefinitionStaticColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
