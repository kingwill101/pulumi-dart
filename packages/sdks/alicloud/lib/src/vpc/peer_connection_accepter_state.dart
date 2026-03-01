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
    pulumi.Output<int>? acceptingOwnerUid,
    pulumi.Output<String>? acceptingRegionId,
    pulumi.Output<String>? acceptingVpcId,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? linkType,
    pulumi.Output<String>? peerConnectionAccepterName,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
  }) :
      acceptingOwnerUid = pulumi.Input.asOptionalInput<int>(acceptingOwnerUid),
      acceptingRegionId = pulumi.Input.asOptionalInput<String>(acceptingRegionId),
      acceptingVpcId = pulumi.Input.asOptionalInput<String>(acceptingVpcId),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      linkType = pulumi.Input.asOptionalInput<String>(linkType),
      peerConnectionAccepterName = pulumi.Input.asOptionalInput<String>(peerConnectionAccepterName),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      acceptingOwnerUid: map['acceptingOwnerUid'] == null ? null : pulumi.Output.create<int>(map['acceptingOwnerUid'] as int),
      acceptingRegionId: map['acceptingRegionId'] == null ? null : pulumi.Output.create<String>(map['acceptingRegionId'] as String),
      acceptingVpcId: map['acceptingVpcId'] == null ? null : pulumi.Output.create<String>(map['acceptingVpcId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      linkType: map['linkType'] == null ? null : pulumi.Output.create<String>(map['linkType'] as String),
      peerConnectionAccepterName: map['peerConnectionAccepterName'] == null ? null : pulumi.Output.create<String>(map['peerConnectionAccepterName'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

