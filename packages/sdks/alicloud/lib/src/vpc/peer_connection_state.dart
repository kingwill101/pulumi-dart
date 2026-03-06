// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PeerConnection resources.
class PeerConnectionState {
  /// The ID of the Alibaba Cloud account to which the accepter VPC belongs.
  ///
  /// *   To create a VPC peering connection within your Alibaba Cloud account, enter the ID of your Alibaba Cloud account.
  /// *   To create a VPC peering connection between your Alibaba Cloud account and another Alibaba Cloud account, enter the ID of the peer Alibaba Cloud account.
  ///
  /// &gt; **NOTE:**   If the accepter is a RAM user, set `AcceptingAliUid` to the ID of the Alibaba Cloud account that created the RAM user.
  final pulumi.Input<int>? acceptingAliUid;
  /// The region ID of the accepter VPC of the VPC peering connection that you want to create.
  ///
  /// - To create an intra-region VPC peering connection, enter a region ID that is the same as that of the requester VPC.
  /// - To create an inter-region VPC peering connection, enter a region ID that is different from that of the requester VPC.
  final pulumi.Input<String>? acceptingRegionId;
  /// The ID of the accepter VPC.
  final pulumi.Input<String>? acceptingVpcId;
  /// The bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0. Before you specify this parameter, make sure that you create an inter-region VPC peering connection.
  final pulumi.Input<int>? bandwidth;
  /// The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  final pulumi.Input<String>? createTime;
  /// The description of the VPC peering connection.
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to forcefully delete the VPC peering connection. Valid values:
  final pulumi.Input<bool>? forceDelete;
  /// The link type of the VPC peering connection that you want to create. Valid values:
  /// - Platinum.
  /// - Gold: default value.
  ///
  /// &gt; **NOTE:**
  ///
  /// &gt; **NOTE:**  - If you need to specify this parameter, ensure that the VPC peering connection is an inter-region connection.
  final pulumi.Input<String>? linkType;
  /// The name of the VPC peering connection.
  /// The name must be 2 to 128 characters in length, and can contain digits, underscores (\_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? peerConnectionName;
  /// The region ID of the resource to which you want to create and add tags.
  final pulumi.Input<String>? regionId;
  /// The ID of the new resource group.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tags of VpcPeer.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the requester VPC or accepter VPC of the VPC peering connection that you want to query.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [PeerConnectionState].
  /// [acceptingAliUid] The ID of the Alibaba Cloud account to which the accepter VPC belongs.
  /// [acceptingRegionId] The region ID of the accepter VPC of the VPC peering connection that you want to create.
  /// [acceptingVpcId] The ID of the accepter VPC.
  /// [bandwidth] The bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0. Before you specify this parameter, make sure that you create an inter-region VPC peering connection.
  /// [createTime] The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  /// [description] The description of the VPC peering connection.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [forceDelete] Specifies whether to forcefully delete the VPC peering connection. Valid values:
  /// [linkType] The link type of the VPC peering connection that you want to create. Valid values:
  /// [peerConnectionName] The name of the VPC peering connection.
  /// [regionId] The region ID of the resource to which you want to create and add tags.
  /// [resourceGroupId] The ID of the new resource group.
  /// [status] The status of the resource
  /// [tags] The tags of VpcPeer.
  /// [vpcId] The ID of the requester VPC or accepter VPC of the VPC peering connection that you want to query.
  const PeerConnectionState({
    this.acceptingAliUid,
    this.acceptingRegionId,
    this.acceptingVpcId,
    this.bandwidth,
    this.createTime,
    this.description,
    this.dryRun,
    this.forceDelete,
    this.linkType,
    this.peerConnectionName,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptingAliUid': ?acceptingAliUid,
      'acceptingRegionId': ?acceptingRegionId,
      'acceptingVpcId': ?acceptingVpcId,
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'linkType': ?linkType,
      'peerConnectionName': ?peerConnectionName,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory PeerConnectionState.fromMap(Map<String, dynamic> map) {
    return PeerConnectionState(
      acceptingAliUid: (() { final guardedValue = map['acceptingAliUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceptingRegionId: (() { final guardedValue = map['acceptingRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acceptingVpcId: (() { final guardedValue = map['acceptingVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkType: (() { final guardedValue = map['linkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerConnectionName: (() { final guardedValue = map['peerConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

