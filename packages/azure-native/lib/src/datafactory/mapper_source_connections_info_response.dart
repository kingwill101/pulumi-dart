// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_connection_response.dart';
import 'mapper_table_response.dart';

/// A object which contains list of tables and connection details for a source connection.
class MapperSourceConnectionsInfoResponse {
  /// Source connection details.
  final MapperConnectionResponse? connection;
  /// List of source tables for a source connection.
  final List<MapperTableResponse>? sourceEntities;

  /// Creates a new [MapperSourceConnectionsInfoResponse].
  /// [connection] Source connection details.
  /// [sourceEntities] List of source tables for a source connection.
  MapperSourceConnectionsInfoResponse({
    this.connection,
    this.sourceEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'sourceEntities': ?sourceEntities == null ? null : pulumi.Input.encodeList<MapperTableResponse, Map<String, dynamic>>(sourceEntities!, (value) => value.toMap()),
    };
  }

  factory MapperSourceConnectionsInfoResponse.fromMap(Map<String, dynamic> map) {
    return MapperSourceConnectionsInfoResponse(
      connection: map['connection'] == null ? null : MapperConnectionResponse.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      sourceEntities: map['sourceEntities'] == null ? null : pulumi.Input.decodeList<MapperTableResponse>(map['sourceEntities'], (value) => MapperTableResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

