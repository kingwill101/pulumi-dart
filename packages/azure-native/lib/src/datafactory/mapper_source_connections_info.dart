// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mapper_connection.dart';
import 'mapper_table.dart';

/// A object which contains list of tables and connection details for a source connection.
class MapperSourceConnectionsInfo {
  /// Source connection details.
  final MapperConnection? connection;
  /// List of source tables for a source connection.
  final List<MapperTable>? sourceEntities;

  /// Creates a new [MapperSourceConnectionsInfo].
  /// [connection] Source connection details.
  /// [sourceEntities] List of source tables for a source connection.
  MapperSourceConnectionsInfo({
    this.connection,
    this.sourceEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'sourceEntities': ?sourceEntities == null ? null : pulumi.Input.encodeList<MapperTable, Map<String, dynamic>>(sourceEntities!, (value) => value.toMap()),
    };
  }

  factory MapperSourceConnectionsInfo.fromMap(Map<String, dynamic> map) {
    return MapperSourceConnectionsInfo(
      connection: map['connection'] == null ? null : MapperConnection.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      sourceEntities: map['sourceEntities'] == null ? null : pulumi.Input.decodeList<MapperTable>(map['sourceEntities'], (value) => MapperTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

