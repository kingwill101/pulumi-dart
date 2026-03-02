// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_mapper_mapping_response.dart';
import 'mapper_connection_response.dart';
import 'mapper_table_response.dart';

/// A object which contains list of tables and connection details for a target connection.
class MapperTargetConnectionsInfoResponse {
  /// Source connection details.
  final pulumi.Input<MapperConnectionResponse>? connection;
  /// List of table mappings.
  final pulumi.Input<List<DataMapperMappingResponse>>? dataMapperMappings;
  /// List of relationship info among the tables.
  final pulumi.Input<List<dynamic>>? relationships;
  /// List of source tables for a target connection.
  final pulumi.Input<List<MapperTableResponse>>? targetEntities;

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
      'connection': ?pulumi.Input.mapOptionalInputValue<MapperConnectionResponse, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'dataMapperMappings': ?pulumi.Input.mapOptionalInputValue<List<DataMapperMappingResponse>, List<Map<String, dynamic>>>(dataMapperMappings, (value) => pulumi.Input.encodeList<DataMapperMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relationships': ?relationships,
      'targetEntities': ?pulumi.Input.mapOptionalInputValue<List<MapperTableResponse>, List<Map<String, dynamic>>>(targetEntities, (value) => pulumi.Input.encodeList<MapperTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperTargetConnectionsInfoResponse.fromMap(Map<String, dynamic> map) {
    return MapperTargetConnectionsInfoResponse(
      connection: map['connection'] == null ? null : (MapperConnectionResponse.fromMap((map['connection'] as Map).cast<String, dynamic>())).input(),
      dataMapperMappings: map['dataMapperMappings'] == null ? null : (pulumi.Input.decodeList<DataMapperMappingResponse>(map['dataMapperMappings'], (value) => DataMapperMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relationships: map['relationships'] == null ? null : ((map['relationships'] as List).cast<dynamic>()).input(),
      targetEntities: map['targetEntities'] == null ? null : (pulumi.Input.decodeList<MapperTableResponse>(map['targetEntities'], (value) => MapperTableResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

