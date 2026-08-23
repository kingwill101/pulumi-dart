// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_connection.dart';
import 'mapper_table.dart';

/// A object which contains list of tables and connection details for a source connection.
class MapperSourceConnectionsInfo {
  /// Source connection details.
  final pulumi.Input<MapperConnection>? connection;
  /// List of source tables for a source connection.
  final pulumi.Input<List<MapperTable>>? sourceEntities;

  /// Creates a new [MapperSourceConnectionsInfo].
  /// [connection] Source connection details.
  /// [sourceEntities] List of source tables for a source connection.
  const MapperSourceConnectionsInfo({
    this.connection,
    this.sourceEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?pulumi.Input.mapOptionalInputValue<MapperConnection, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'sourceEntities': ?pulumi.Input.mapOptionalInputValue<List<MapperTable>, List<Map<String, dynamic>>>(sourceEntities, (value) => pulumi.Input.encodeList<MapperTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MapperSourceConnectionsInfo.fromMap(Map<String, dynamic> map) {
    return MapperSourceConnectionsInfo(
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MapperConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceEntities: (() { final guardedValue = map['sourceEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapperTable>(guardedValue, (value) => MapperTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
