// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_connection.dart';

/// Result data returned by getConnections.
class GetConnectionsResult {
  /// A list of VPN connections. Each element contains the following attributes:
  final List<GetConnectionsConnection> connections;
  /// The ID of the customer gateway in Tunnel.
  final String? customerGatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) IDs of the VPN connections.
  final List<String> ids;
  final String? nameRegex;
  /// (Optional) names of the VPN connections.
  final List<String> names;
  final String? outputFile;
  /// ID of the VPN gateway.
  final String? vpnGatewayId;

  /// Creates a new [GetConnectionsResult].
  /// [connections] A list of VPN connections. Each element contains the following attributes:
  /// [customerGatewayId] The ID of the customer gateway in Tunnel.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) IDs of the VPN connections.
  /// [nameRegex] Optional.
  /// [names] (Optional) names of the VPN connections.
  /// [outputFile] Optional.
  /// [vpnGatewayId] ID of the VPN gateway.
  GetConnectionsResult({
    required this.connections,
    this.customerGatewayId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.encodeList<GetConnectionsConnection, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'customerGatewayId': ?customerGatewayId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionsResult(
      connections: pulumi.Input.decodeList<GetConnectionsConnection>(map['connections'], (value) => GetConnectionsConnection.fromMap((value as Map).cast<String, dynamic>())),
      customerGatewayId: map['customerGatewayId'] == null ? null : map['customerGatewayId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vpnGatewayId: map['vpnGatewayId'] == null ? null : map['vpnGatewayId'] as String,
    );
  }
}

