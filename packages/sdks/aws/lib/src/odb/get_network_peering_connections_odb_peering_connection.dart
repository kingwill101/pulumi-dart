// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkPeeringConnectionsOdbPeeringConnection {
  /// Amazon Resource Name (ARN) for the ODB network peering connection.
  final pulumi.Input<String> arn;
  /// Display name of the ODB network peering connection.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the ODB network peering connection.
  final pulumi.Input<String> id;
  /// ARN of the ODB network peering connection.
  final pulumi.Input<String> odbNetworkArn;
  /// ARN of the peer network peering connection.
  final pulumi.Input<String> peerNetworkArn;

  /// Creates a new [GetNetworkPeeringConnectionsOdbPeeringConnection].
  /// [arn] Amazon Resource Name (ARN) for the ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection.
  /// [id] Unique identifier of the ODB network peering connection.
  /// [odbNetworkArn] ARN of the ODB network peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  const GetNetworkPeeringConnectionsOdbPeeringConnection({
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
      arn: pulumi.Input.fromValue(map['arn'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      odbNetworkArn: pulumi.Input.fromValue(map['odbNetworkArn'] as String),
      peerNetworkArn: pulumi.Input.fromValue(map['peerNetworkArn'] as String),
    );
  }
}
