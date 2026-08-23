// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_connections_odb_peering_connection.dart';

/// Result data returned by getNetworkPeeringConnections.
class GetNetworkPeeringConnectionsResult {
  /// List of ODB peering connections. A summary of an ODB peering connection.
  final List<GetNetworkPeeringConnectionsOdbPeeringConnection> odbPeeringConnections;
  final String region;

  /// Creates a new [GetNetworkPeeringConnectionsResult].
  /// [odbPeeringConnections] List of ODB peering connections. A summary of an ODB peering connection.
  /// [region] Required.
  const GetNetworkPeeringConnectionsResult({
    required this.odbPeeringConnections,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'odbPeeringConnections': pulumi.Input.encodeList<GetNetworkPeeringConnectionsOdbPeeringConnection, Map<String, dynamic>>(odbPeeringConnections, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetNetworkPeeringConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsResult(
      odbPeeringConnections: pulumi.Input.decodeList<GetNetworkPeeringConnectionsOdbPeeringConnection>(map['odbPeeringConnections']!, (value) => GetNetworkPeeringConnectionsOdbPeeringConnection.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
