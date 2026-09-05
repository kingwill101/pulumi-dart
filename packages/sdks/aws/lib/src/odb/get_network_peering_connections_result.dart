// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_connections_odb_peering_connection.dart';

/// Result data returned by getNetworkPeeringConnections.
class GetNetworkPeeringConnectionsResult {
  /// List of ODB peering connections. A summary of an ODB peering connection.
  final List<GetNetworkPeeringConnectionsOdbPeeringConnection>? odbPeeringConnections;
  final String? region;

  /// Creates a new [GetNetworkPeeringConnectionsResult].
  /// [odbPeeringConnections] List of ODB peering connections. A summary of an ODB peering connection.
  /// [region] Optional.
  const GetNetworkPeeringConnectionsResult({
    this.odbPeeringConnections,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'odbPeeringConnections': ?(() { final guardedValue = odbPeeringConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkPeeringConnectionsOdbPeeringConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetNetworkPeeringConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsResult(
      odbPeeringConnections: (() { final guardedValue = map['odbPeeringConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkPeeringConnectionsOdbPeeringConnection>(guardedValue, (value) => GetNetworkPeeringConnectionsOdbPeeringConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
