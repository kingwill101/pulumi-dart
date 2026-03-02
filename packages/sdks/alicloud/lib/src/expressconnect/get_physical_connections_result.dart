// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_physical_connections_connection.dart';

/// Result data returned by getPhysicalConnections.
class GetPhysicalConnectionsResult {
  final List<GetPhysicalConnectionsConnection> connections;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? includeReservationData;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetPhysicalConnectionsResult].
  /// [connections] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [includeReservationData] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetPhysicalConnectionsResult({
    required this.connections,
    required this.id,
    required this.ids,
    this.includeReservationData,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.encodeList<GetPhysicalConnectionsConnection, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetPhysicalConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetPhysicalConnectionsResult(
      connections: pulumi.Input.decodeList<GetPhysicalConnectionsConnection>(map['connections'], (value) => GetPhysicalConnectionsConnection.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

