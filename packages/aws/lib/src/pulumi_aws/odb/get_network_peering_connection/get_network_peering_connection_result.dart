// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetworkPeeringConnection.
class GetNetworkPeeringConnectionResult {
  /// The Amazon Resource Name (ARN) for the  ODB network peering connection.
  final String arn;

  /// Created time of the ODB network peering connection.
  final String createdAt;

  /// Display name of the ODB network peering connection.
  final String displayName;
  final String id;

  /// ARN of the ODB network peering connection.
  final String odbNetworkArn;

  /// Type of the ODB peering connection.
  final String odbPeeringConnectionType;

  /// ARN of the peer network peering connection.
  final String peerNetworkArn;

  /// Progress of the ODB network peering connection.
  final double percentProgress;
  final String region;

  /// Status of the ODB network peering connection.
  final String status;

  /// Status of the ODB network peering connection.
  final String statusReason;

  /// Tags applied to the resource.
  final Map<String, String> tags;

  GetNetworkPeeringConnectionResult({
    required this.arn,
    required this.createdAt,
    required this.displayName,
    required this.id,
    required this.odbNetworkArn,
    required this.odbPeeringConnectionType,
    required this.peerNetworkArn,
    required this.percentProgress,
    required this.region,
    required this.status,
    required this.statusReason,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['displayName'] = displayName;
    map['id'] = id;
    map['odbNetworkArn'] = odbNetworkArn;
    map['odbPeeringConnectionType'] = odbPeeringConnectionType;
    map['peerNetworkArn'] = peerNetworkArn;
    map['percentProgress'] = percentProgress;
    map['region'] = region;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['tags'] = tags;
    return map;
  }

  factory GetNetworkPeeringConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      odbNetworkArn: map['odbNetworkArn'] as String,
      odbPeeringConnectionType: map['odbPeeringConnectionType'] as String,
      peerNetworkArn: map['peerNetworkArn'] as String,
      percentProgress: map['percentProgress'] as double,
      region: map['region'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
