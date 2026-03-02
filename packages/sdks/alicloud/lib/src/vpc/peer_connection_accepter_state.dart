// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PeerConnectionAccepter resources.
class PeerConnectionAccepterState {
  /// The ID of the Alibaba Cloud account (primary account) of the receiving end of the VPC peering connection to be created.-to-peer connection to the VPC account.-account VPC peer-to-peer connection.
  final pulumi.Input<int>? acceptingOwnerUid;
  /// The region ID of the recipient of the VPC peering connection to be created.-to-peer connection in the same region, enter the same region ID as the region ID of the initiator.-region VPC peer-to-peer connection, enter a region ID that is different from the region ID of the initiator.
  final pulumi.Input<String>? acceptingRegionId;
  /// The VPC ID of the receiving end of the VPC peer connection.
  final pulumi.Input<String>? acceptingVpcId;
  /// The new bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0.
  final pulumi.Input<int>? bandwidth;
  /// The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  final pulumi.Input<String>? createTime;
  /// The new description of the VPC peering connection.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to forcefully delete the VPC peering connection. Valid values:
  final pulumi.Input<bool>? forceDelete;
  /// The ID of the VPC peering connection whose name or description you want to modify.
  final pulumi.Input<String>? instanceId;
  /// Link Type
  final pulumi.Input<String>? linkType;
  /// The new name of the VPC peering connection.
  /// The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? peerConnectionAccepterName;
  /// The ID of the region where you want to query VPC peering connections.
  final pulumi.Input<String>? regionId;
  /// The ID of the new resource group.
  ///
  /// > **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The VPC ID of the initiator of the VPC peering connection.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [PeerConnectionAccepterState].
  /// [acceptingOwnerUid] The ID of the Alibaba Cloud account (primary account) of the receiving end of the VPC peering connection to be created.-to-peer connection to the VPC account.-account VPC peer-to-peer connection.
  /// [acceptingRegionId] The region ID of the recipient of the VPC peering connection to be created.-to-peer connection in the same region, enter the same region ID as the region ID of the initiator.-region VPC peer-to-peer connection, enter a region ID that is different from the region ID of the initiator.
  /// [acceptingVpcId] The VPC ID of the receiving end of the VPC peer connection.
  /// [bandwidth] The new bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0.
  /// [createTime] The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  /// [description] The new description of the VPC peering connection.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [forceDelete] Specifies whether to forcefully delete the VPC peering connection. Valid values:
  /// [instanceId] The ID of the VPC peering connection whose name or description you want to modify.
  /// [linkType] Link Type
  /// [peerConnectionAccepterName] The new name of the VPC peering connection.
  /// [regionId] The ID of the region where you want to query VPC peering connections.
  /// [resourceGroupId] The ID of the new resource group.
  /// [status] The status of the resource
  /// [vpcId] The VPC ID of the initiator of the VPC peering connection.
  PeerConnectionAccepterState({
    this.acceptingOwnerUid,
    this.acceptingRegionId,
    this.acceptingVpcId,
    this.bandwidth,
    this.createTime,
    this.description,
    this.dryRun,
    this.forceDelete,
    this.instanceId,
    this.linkType,
    this.peerConnectionAccepterName,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptingOwnerUid': ?acceptingOwnerUid,
      'acceptingRegionId': ?acceptingRegionId,
      'acceptingVpcId': ?acceptingVpcId,
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'instanceId': ?instanceId,
      'linkType': ?linkType,
      'peerConnectionAccepterName': ?peerConnectionAccepterName,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory PeerConnectionAccepterState.fromMap(Map<String, dynamic> map) {
    return PeerConnectionAccepterState(
      acceptingOwnerUid: map['acceptingOwnerUid'] == null ? null : (map['acceptingOwnerUid']! as int).input(),
      acceptingRegionId: map['acceptingRegionId'] == null ? null : (map['acceptingRegionId']! as String).input(),
      acceptingVpcId: map['acceptingVpcId'] == null ? null : (map['acceptingVpcId']! as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete']! as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      linkType: map['linkType'] == null ? null : (map['linkType']! as String).input(),
      peerConnectionAccepterName: map['peerConnectionAccepterName'] == null ? null : (map['peerConnectionAccepterName']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

