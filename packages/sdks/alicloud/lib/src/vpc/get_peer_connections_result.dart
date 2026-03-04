// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peer_connections_connection.dart';

/// Result data returned by getPeerConnections.
class GetPeerConnectionsResult {
  /// A list of Vpc Peer Connections. Each element contains the following attributes:
  final List<GetPeerConnectionsConnection> connections;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;

  /// A list of PeerConnection names.
  final List<String> names;
  final String? outputFile;

  /// The name of the resource.
  final String? peerConnectionName;

  /// The status of the resource.
  final String? status;

  /// The ID of the requester VPC.
  final String? vpcId;

  /// Creates a new [GetPeerConnectionsResult].
  /// [connections] A list of Vpc Peer Connections. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of PeerConnection names.
  /// [outputFile] Optional.
  /// [peerConnectionName] The name of the resource.
  /// [status] The status of the resource.
  /// [vpcId] The ID of the requester VPC.
  GetPeerConnectionsResult({
    required this.connections,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.peerConnectionName,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections':
          pulumi.Input.encodeList<
            GetPeerConnectionsConnection,
            Map<String, dynamic>
          >(connections, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'peerConnectionName': ?peerConnectionName,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetPeerConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetPeerConnectionsResult(
      connections: pulumi.Input.decodeList<GetPeerConnectionsConnection>(
        map['connections']!,
        (value) => GetPeerConnectionsConnection.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      peerConnectionName: (() {
        final guardedValue = map['peerConnectionName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
