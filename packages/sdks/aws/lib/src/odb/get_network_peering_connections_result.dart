// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_connections_odb_peering_connection.dart';

/// Result data returned by getNetworkPeeringConnections.
class GetNetworkPeeringConnectionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of ODB peering connections. A summary of an ODB peering connection.
  final List<GetNetworkPeeringConnectionsOdbPeeringConnection> odbPeeringConnections;
  final String region;

  /// Creates a new [GetNetworkPeeringConnectionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [odbPeeringConnections] The list of ODB peering connections. A summary of an ODB peering connection.
  /// [region] Required.
  GetNetworkPeeringConnectionsResult({
    required this.id,
    required this.odbPeeringConnections,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'odbPeeringConnections': pulumi.Input.encodeList<GetNetworkPeeringConnectionsOdbPeeringConnection, Map<String, dynamic>>(odbPeeringConnections, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetNetworkPeeringConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsResult(
      id: map['id'] as String,
      odbPeeringConnections: pulumi.Input.decodeList<GetNetworkPeeringConnectionsOdbPeeringConnection>(map['odbPeeringConnections']!, (value) => GetNetworkPeeringConnectionsOdbPeeringConnection.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

