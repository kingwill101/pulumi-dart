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

  /// Creates a new [GetNetworkPeeringConnectionResult].
  /// [arn] The Amazon Resource Name (ARN) for the  ODB network peering connection.
  /// [createdAt] Created time of the ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection.
  /// [id] Required.
  /// [odbNetworkArn] ARN of the ODB network peering connection.
  /// [odbPeeringConnectionType] Type of the ODB peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  /// [percentProgress] Progress of the ODB network peering connection.
  /// [region] Required.
  /// [status] Status of the ODB network peering connection.
  /// [statusReason] Status of the ODB network peering connection.
  /// [tags] Tags applied to the resource.
  const GetNetworkPeeringConnectionResult({
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
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'displayName': displayName,
      'id': id,
      'odbNetworkArn': odbNetworkArn,
      'odbPeeringConnectionType': odbPeeringConnectionType,
      'peerNetworkArn': peerNetworkArn,
      'percentProgress': percentProgress,
      'region': region,
      'status': status,
      'statusReason': statusReason,
      'tags': tags,
    };
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

