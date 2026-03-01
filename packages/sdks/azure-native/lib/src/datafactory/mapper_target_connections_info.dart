// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_mapper_mapping.dart';
import 'mapper_connection.dart';
import 'mapper_table.dart';

/// A object which contains list of tables and connection details for a target connection.
class MapperTargetConnectionsInfo {
  /// Source connection details.
  final MapperConnection? connection;
  /// List of table mappings.
  final List<DataMapperMapping>? dataMapperMappings;
  /// List of relationship info among the tables.
  final List<dynamic>? relationships;
  /// List of source tables for a target connection.
  final List<MapperTable>? targetEntities;

  /// Creates a new [MapperTargetConnectionsInfo].
  /// [connection] Source connection details.
  /// [dataMapperMappings] List of table mappings.
  /// [relationships] List of relationship info among the tables.
  /// [targetEntities] List of source tables for a target connection.
  MapperTargetConnectionsInfo({
    this.connection,
    this.dataMapperMappings,
    this.relationships,
    this.targetEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'dataMapperMappings': ?dataMapperMappings == null ? null : pulumi.Input.encodeList<DataMapperMapping, Map<String, dynamic>>(dataMapperMappings!, (value) => value.toMap()),
      'relationships': ?relationships,
      'targetEntities': ?targetEntities == null ? null : pulumi.Input.encodeList<MapperTable, Map<String, dynamic>>(targetEntities!, (value) => value.toMap()),
    };
  }

  factory MapperTargetConnectionsInfo.fromMap(Map<String, dynamic> map) {
    return MapperTargetConnectionsInfo(
      connection: map['connection'] == null ? null : MapperConnection.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      dataMapperMappings: map['dataMapperMappings'] == null ? null : pulumi.Input.decodeList<DataMapperMapping>(map['dataMapperMappings'], (value) => DataMapperMapping.fromMap((value as Map).cast<String, dynamic>())),
      relationships: map['relationships'] == null ? null : (map['relationships'] as List).cast<dynamic>(),
      targetEntities: map['targetEntities'] == null ? null : pulumi.Input.decodeList<MapperTable>(map['targetEntities'], (value) => MapperTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

