// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkPeeringConnection.
class GetNetworkPeeringConnectionResult {
  /// ARN for the  ODB network peering connection.
  final String? arn;
  /// Created time of the ODB network peering connection.
  final String? createdAt;
  /// Display name of the ODB network peering connection.
  final String? displayName;
  final String? id;
  /// ARN of the ODB network peering connection.
  final String? odbNetworkArn;
  /// Type of the ODB peering connection.
  final String? odbPeeringConnectionType;
  /// ARN of the peer network peering connection.
  final String? peerNetworkArn;
  /// Set of peer network cidrs.
  final List<String>? peerNetworkCidrs;
  /// Progress of the ODB network peering connection.
  final double? percentProgress;
  final String? region;
  /// Status of the ODB network peering connection.
  final String? status;
  /// Status of the ODB network peering connection.
  final String? statusReason;
  /// Tags applied to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkPeeringConnectionResult].
  /// [arn] ARN for the  ODB network peering connection.
  /// [createdAt] Created time of the ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection.
  /// [id] Optional.
  /// [odbNetworkArn] ARN of the ODB network peering connection.
  /// [odbPeeringConnectionType] Type of the ODB peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  /// [peerNetworkCidrs] Set of peer network cidrs.
  /// [percentProgress] Progress of the ODB network peering connection.
  /// [region] Optional.
  /// [status] Status of the ODB network peering connection.
  /// [statusReason] Status of the ODB network peering connection.
  /// [tags] Tags applied to the resource.
  const GetNetworkPeeringConnectionResult({
    this.arn,
    this.createdAt,
    this.displayName,
    this.id,
    this.odbNetworkArn,
    this.odbPeeringConnectionType,
    this.peerNetworkArn,
    this.peerNetworkCidrs,
    this.percentProgress,
    this.region,
    this.status,
    this.statusReason,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'displayName': ?displayName,
      'id': ?id,
      'odbNetworkArn': ?odbNetworkArn,
      'odbPeeringConnectionType': ?odbPeeringConnectionType,
      'peerNetworkArn': ?peerNetworkArn,
      'peerNetworkCidrs': ?peerNetworkCidrs,
      'percentProgress': ?percentProgress,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
    };
  }

  factory GetNetworkPeeringConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbPeeringConnectionType: (() { final guardedValue = map['odbPeeringConnectionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerNetworkArn: (() { final guardedValue = map['peerNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerNetworkCidrs: (() { final guardedValue = map['peerNetworkCidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
