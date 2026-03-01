// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkPeeringConnectionsOdbPeeringConnection {
  /// The Amazon Resource Name (ARN) for the  ODB network peering connection.
  final String arn;
  /// Display name of the ODB network peering connection.
  final String displayName;
  /// The unique identifier of the  ODB network peering connection.
  final String id;
  /// ARN of the ODB network peering connection.
  final String odbNetworkArn;
  /// ARN of the peer network peering connection.
  final String peerNetworkArn;

  /// Creates a new [GetNetworkPeeringConnectionsOdbPeeringConnection].
  /// [arn] The Amazon Resource Name (ARN) for the  ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection.
  /// [id] The unique identifier of the  ODB network peering connection.
  /// [odbNetworkArn] ARN of the ODB network peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  GetNetworkPeeringConnectionsOdbPeeringConnection({
    required this.arn,
    required this.displayName,
    required this.id,
    required this.odbNetworkArn,
    required this.peerNetworkArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'displayName': displayName,
      'id': id,
      'odbNetworkArn': odbNetworkArn,
      'peerNetworkArn': peerNetworkArn,
    };
  }

  factory GetNetworkPeeringConnectionsOdbPeeringConnection.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsOdbPeeringConnection(
      arn: map['arn'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      odbNetworkArn: map['odbNetworkArn'] as String,
      peerNetworkArn: map['peerNetworkArn'] as String,
    );
  }
}

