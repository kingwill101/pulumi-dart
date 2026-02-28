// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_schema_definition_clustering_key.dart';
import 'table_schema_definition_column.dart';
import 'table_schema_definition_partition_key.dart';
import 'table_schema_definition_static_column.dart';

class TableSchemaDefinition {
  /// The columns that are part of the clustering key of the table.
  final List<TableSchemaDefinitionClusteringKey>? clusteringKeys;

  /// The regular columns of the table.
  final List<TableSchemaDefinitionColumn> columns;

  /// The columns that are part of the partition key of the table .
  final List<TableSchemaDefinitionPartitionKey> partitionKeys;

  /// The columns that have been defined as `STATIC`. Static columns store values that are shared by all rows in the same partition.
  final List<TableSchemaDefinitionStaticColumn>? staticColumns;

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
    final map = <String, dynamic>{};
    final clusteringKeysValue = clusteringKeys;
    if (clusteringKeysValue != null) {
      map['clusteringKeys'] = pulumi.Input.encodeList<
          TableSchemaDefinitionClusteringKey,
          Map<String, dynamic>>(clusteringKeysValue, (value) => value.toMap());
    }
    map['columns'] = pulumi.Input.encodeList<TableSchemaDefinitionColumn,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    map['partitionKeys'] = pulumi.Input.encodeList<
        TableSchemaDefinitionPartitionKey,
        Map<String, dynamic>>(partitionKeys, (value) => value.toMap());
    final staticColumnsValue = staticColumns;
    if (staticColumnsValue != null) {
      map['staticColumns'] = pulumi.Input.encodeList<
          TableSchemaDefinitionStaticColumn,
          Map<String, dynamic>>(staticColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableSchemaDefinition.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinition(
      clusteringKeys: map['clusteringKeys'] == null
          ? null
          : pulumi.Input.decodeList<TableSchemaDefinitionClusteringKey>(
              map['clusteringKeys'],
              (value) => TableSchemaDefinitionClusteringKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      columns: pulumi.Input.decodeList<TableSchemaDefinitionColumn>(
          map['columns'],
          (value) => TableSchemaDefinitionColumn.fromMap(
              (value as Map).cast<String, dynamic>())),
      partitionKeys: pulumi.Input.decodeList<TableSchemaDefinitionPartitionKey>(
          map['partitionKeys'],
          (value) => TableSchemaDefinitionPartitionKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      staticColumns: map['staticColumns'] == null
          ? null
          : pulumi.Input.decodeList<TableSchemaDefinitionStaticColumn>(
              map['staticColumns'],
              (value) => TableSchemaDefinitionStaticColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
