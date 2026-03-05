// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_connections_connection.dart';

/// Result data returned by getVpcEndpointConnections.
class GetVpcEndpointConnectionsResult {
  /// A list of Privatelink Vpc Endpoint Connections. Each element contains the following attributes:
  final List<GetVpcEndpointConnectionsConnection> connections;
  /// The ID of the Vpc Endpoint.
  final String? endpointId;
  final int? endpointOwnerId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Endpoint Connection IDs.
  final List<String> ids;
  final String? outputFile;
  final String serviceId;
  /// The status of Vpc Endpoint Connection.
  final String? status;

  /// Creates a new [GetVpcEndpointConnectionsResult].
  /// [connections] A list of Privatelink Vpc Endpoint Connections. Each element contains the following attributes:
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [endpointOwnerId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Endpoint Connection IDs.
  /// [outputFile] Optional.
  /// [serviceId] Required.
  /// [status] The status of Vpc Endpoint Connection.
  GetVpcEndpointConnectionsResult({
    required this.connections,
    this.endpointId,
    this.endpointOwnerId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.serviceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.encodeList<GetVpcEndpointConnectionsConnection, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'endpointId': ?endpointId,
      'endpointOwnerId': ?endpointOwnerId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'serviceId': serviceId,
      'status': ?status,
    };
  }

  factory GetVpcEndpointConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointConnectionsResult(
      connections: pulumi.Input.decodeList<GetVpcEndpointConnectionsConnection>(map['connections']!, (value) => GetVpcEndpointConnectionsConnection.fromMap((value as Map).cast<String, dynamic>())),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointOwnerId: (() { final guardedValue = map['endpointOwnerId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: map['serviceId'] as String,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

