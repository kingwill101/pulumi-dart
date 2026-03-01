// ignore_for_file: unused_element, unnecessary_cast


class GetPeerConnectionsConnection {
  /// The ID of the Alibaba Cloud account (primary account) of the receiving end of the VPC peering connection to be created.
  final int acceptingAliUid;
  /// The region ID of the recipient of the VPC peering connection to be created.
  final String acceptingRegionId;
  /// The VPC ID of the receiving end of the VPC peer connection.
  final String acceptingVpcId;
  /// The bandwidth of the VPC peering connection to be modified. Unit: Mbps.
  final int bandwidth;
  /// The creation time of the resource.
  final String createTime;
  /// The description of the VPC peer connection to be created.
  final String description;
  /// The ID of the PeerConnection.
  final String id;
  /// The first ID of the resource.
  final String peerConnectionId;
  /// The name of the resource.
  final String peerConnectionName;
  /// The status of the resource. Valid values: `Accepting`, `Activated`, `Creating`, `Deleted`, `Deleting`, `Expired`, `Rejected`, `Updating`.
  final String status;
  /// The ID of the requester VPC.
  final String vpcId;

  /// Creates a new [GetPeerConnectionsConnection].
  /// [acceptingAliUid] The ID of the Alibaba Cloud account (primary account) of the receiving end of the VPC peering connection to be created.
  /// [acceptingRegionId] The region ID of the recipient of the VPC peering connection to be created.
  /// [acceptingVpcId] The VPC ID of the receiving end of the VPC peer connection.
  /// [bandwidth] The bandwidth of the VPC peering connection to be modified. Unit: Mbps.
  /// [createTime] The creation time of the resource.
  /// [description] The description of the VPC peer connection to be created.
  /// [id] The ID of the PeerConnection.
  /// [peerConnectionId] The first ID of the resource.
  /// [peerConnectionName] The name of the resource.
  /// [status] The status of the resource. Valid values: `Accepting`, `Activated`, `Creating`, `Deleted`, `Deleting`, `Expired`, `Rejected`, `Updating`.
  /// [vpcId] The ID of the requester VPC.
  GetPeerConnectionsConnection({
    required this.acceptingAliUid,
    required this.acceptingRegionId,
    required this.acceptingVpcId,
    required this.bandwidth,
    required this.createTime,
    required this.description,
    required this.id,
    required this.peerConnectionId,
    required this.peerConnectionName,
    required this.status,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptingAliUid': acceptingAliUid,
      'acceptingRegionId': acceptingRegionId,
      'acceptingVpcId': acceptingVpcId,
      'bandwidth': bandwidth,
      'createTime': createTime,
      'description': description,
      'id': id,
      'peerConnectionId': peerConnectionId,
      'peerConnectionName': peerConnectionName,
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetPeerConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetPeerConnectionsConnection(
      acceptingAliUid: map['acceptingAliUid'] as int,
      acceptingRegionId: map['acceptingRegionId'] as String,
      acceptingVpcId: map['acceptingVpcId'] as String,
      bandwidth: map['bandwidth'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      peerConnectionId: map['peerConnectionId'] as String,
      peerConnectionName: map['peerConnectionName'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

