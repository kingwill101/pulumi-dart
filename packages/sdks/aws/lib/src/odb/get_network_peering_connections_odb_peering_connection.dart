// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkPeeringConnectionsOdbPeeringConnection {
  /// The Amazon Resource Name (ARN) for the  ODB network peering connection.
  final pulumi.Input<String> arn;
  /// Display name of the ODB network peering connection.
  final pulumi.Input<String> displayName;
  /// The unique identifier of the  ODB network peering connection.
  final pulumi.Input<String> id;
  /// ARN of the ODB network peering connection.
  final pulumi.Input<String> odbNetworkArn;
  /// ARN of the peer network peering connection.
  final pulumi.Input<String> peerNetworkArn;

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
      arn: (map['arn'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      odbNetworkArn: (map['odbNetworkArn'] as String).input(),
      peerNetworkArn: (map['peerNetworkArn'] as String).input(),
    );
  }
}

