// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_mapper_mapping_response.dart';
import 'mapper_connection_response.dart';
import 'mapper_table_response.dart';

/// A object which contains list of tables and connection details for a target connection.
class MapperTargetConnectionsInfoResponse {
  /// Source connection details.
  final MapperConnectionResponse? connection;
  /// List of table mappings.
  final List<DataMapperMappingResponse>? dataMapperMappings;
  /// List of relationship info among the tables.
  final List<dynamic>? relationships;
  /// List of source tables for a target connection.
  final List<MapperTableResponse>? targetEntities;

  /// Creates a new [MapperTargetConnectionsInfoResponse].
  /// [connection] Source connection details.
  /// [dataMapperMappings] List of table mappings.
  /// [relationships] List of relationship info among the tables.
  /// [targetEntities] List of source tables for a target connection.
  MapperTargetConnectionsInfoResponse({
    this.connection,
    this.dataMapperMappings,
    this.relationships,
    this.targetEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'dataMapperMappings': ?dataMapperMappings == null ? null : pulumi.Input.encodeList<DataMapperMappingResponse, Map<String, dynamic>>(dataMapperMappings!, (value) => value.toMap()),
      'relationships': ?relationships,
      'targetEntities': ?targetEntities == null ? null : pulumi.Input.encodeList<MapperTableResponse, Map<String, dynamic>>(targetEntities!, (value) => value.toMap()),
    };
  }

  factory MapperTargetConnectionsInfoResponse.fromMap(Map<String, dynamic> map) {
    return MapperTargetConnectionsInfoResponse(
      connection: map['connection'] == null ? null : MapperConnectionResponse.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      dataMapperMappings: map['dataMapperMappings'] == null ? null : pulumi.Input.decodeList<DataMapperMappingResponse>(map['dataMapperMappings'], (value) => DataMapperMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      relationships: map['relationships'] == null ? null : (map['relationships'] as List).cast<dynamic>(),
      targetEntities: map['targetEntities'] == null ? null : pulumi.Input.decodeList<MapperTableResponse>(map['targetEntities'], (value) => MapperTableResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

