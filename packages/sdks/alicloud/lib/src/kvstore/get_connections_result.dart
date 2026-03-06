// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_connection.dart';

/// Result data returned by getConnections.
class GetConnectionsResult {
  /// Public network details of the specified resource. contains the following attributes:
  final List<GetConnectionsConnection> connections;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance ids.
  final String ids;
  final String? outputFile;

  /// Creates a new [GetConnectionsResult].
  /// [connections] Public network details of the specified resource. contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance ids.
  /// [outputFile] Optional.
  const GetConnectionsResult({
    required this.connections,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.encodeList<GetConnectionsConnection, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionsResult(
      connections: pulumi.Input.decodeList<GetConnectionsConnection>(map['connections']!, (value) => GetConnectionsConnection.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: map['ids'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

