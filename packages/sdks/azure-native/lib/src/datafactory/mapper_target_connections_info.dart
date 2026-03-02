// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_mapper_mapping.dart';
import 'mapper_connection.dart';
import 'mapper_table.dart';

/// A object which contains list of tables and connection details for a target connection.
class MapperTargetConnectionsInfo {
  /// Source connection details.
  final pulumi.Input<MapperConnection>? connection;
  /// List of table mappings.
  final pulumi.Input<List<DataMapperMapping>>? dataMapperMappings;
  /// List of relationship info among the tables.
  final pulumi.Input<List<dynamic>>? relationships;
  /// List of source tables for a target connection.
  final pulumi.Input<List<MapperTable>>? targetEntities;

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
      'connection': ?pulumi.Input.mapOptionalInputValue<MapperConnection, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'dataMapperMappings': ?pulumi.Input.mapOptionalInputValue<List<DataMapperMapping>, List<Map<String, dynamic>>>(dataMapperMappings, (value) => pulumi.Input.encodeList<DataMapperMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relationships': ?relationships,
      'targetEntities': ?pulumi.Input.mapOptionalInputValue<List<MapperTable>, List<Map<String, dynamic>>>(targetEntities, (value) => pulumi.Input.encodeList<MapperTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperTargetConnectionsInfo.fromMap(Map<String, dynamic> map) {
    return MapperTargetConnectionsInfo(
      connection: map['connection'] == null ? null : (MapperConnection.fromMap((map['connection']! as Map).cast<String, dynamic>())).input(),
      dataMapperMappings: map['dataMapperMappings'] == null ? null : (pulumi.Input.decodeList<DataMapperMapping>(map['dataMapperMappings']!, (value) => DataMapperMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relationships: map['relationships'] == null ? null : ((map['relationships']! as List).cast<dynamic>()).input(),
      targetEntities: map['targetEntities'] == null ? null : (pulumi.Input.decodeList<MapperTable>(map['targetEntities']!, (value) => MapperTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

