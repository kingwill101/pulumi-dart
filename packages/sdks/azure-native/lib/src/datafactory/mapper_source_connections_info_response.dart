// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_connection_response.dart';
import 'mapper_table_response.dart';

/// A object which contains list of tables and connection details for a source connection.
class MapperSourceConnectionsInfoResponse {
  /// Source connection details.
  final pulumi.Input<MapperConnectionResponse>? connection;
  /// List of source tables for a source connection.
  final pulumi.Input<List<MapperTableResponse>>? sourceEntities;

  /// Creates a new [MapperSourceConnectionsInfoResponse].
  /// [connection] Source connection details.
  /// [sourceEntities] List of source tables for a source connection.
  const MapperSourceConnectionsInfoResponse({
    this.connection,
    this.sourceEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?pulumi.Input.mapOptionalInputValue<MapperConnectionResponse, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'sourceEntities': ?pulumi.Input.mapOptionalInputValue<List<MapperTableResponse>, List<Map<String, dynamic>>>(sourceEntities, (value) => pulumi.Input.encodeList<MapperTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperSourceConnectionsInfoResponse.fromMap(Map<String, dynamic> map) {
    return MapperSourceConnectionsInfoResponse(
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceEntities: (() { final guardedValue = map['sourceEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperTableResponse>(guardedValue, (value) => MapperTableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
