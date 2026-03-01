// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_peer_connection_peer_connection_args_doc}
/// The set of arguments for PeerConnection.
/// {@endtemplate}
/// {@macro pulumi_vpc_peer_connection_peer_connection_args_doc}
class PeerConnectionArgs {
  /// The ID of the Alibaba Cloud account to which the accepter VPC belongs.
  ///
  /// *   To create a VPC peering connection within your Alibaba Cloud account, enter the ID of your Alibaba Cloud account.
  /// *   To create a VPC peering connection between your Alibaba Cloud account and another Alibaba Cloud account, enter the ID of the peer Alibaba Cloud account.
  ///
  /// > **NOTE:**   If the accepter is a RAM user, set `AcceptingAliUid` to the ID of the Alibaba Cloud account that created the RAM user.
  final pulumi.Input<int>? acceptingAliUid;
  /// The region ID of the accepter VPC of the VPC peering connection that you want to create.
  ///
  /// - To create an intra-region VPC peering connection, enter a region ID that is the same as that of the requester VPC.
  /// - To create an inter-region VPC peering connection, enter a region ID that is different from that of the requester VPC.
  final pulumi.Input<String> acceptingRegionId;
  /// The ID of the accepter VPC.
  final pulumi.Input<String> acceptingVpcId;
  /// The bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0. Before you specify this parameter, make sure that you create an inter-region VPC peering connection.
  final pulumi.Input<int>? bandwidth;
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
  /// > **NOTE:**
  ///
  /// > **NOTE:**  - If you need to specify this parameter, ensure that the VPC peering connection is an inter-region connection.
  final pulumi.Input<String>? linkType;
  /// The name of the VPC peering connection.
  /// The name must be 2 to 128 characters in length, and can contain digits, underscores (\_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? peerConnectionName;
  /// The ID of the new resource group.
  ///
  /// > **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tags of VpcPeer.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the requester VPC or accepter VPC of the VPC peering connection that you want to query.
  final pulumi.Input<String> vpcId;

  /// Creates a new [PeerConnectionArgs].
  /// [acceptingAliUid] The ID of the Alibaba Cloud account to which the accepter VPC belongs.
  /// [acceptingRegionId] The region ID of the accepter VPC of the VPC peering connection that you want to create.
  /// [acceptingVpcId] The ID of the accepter VPC.
  /// [bandwidth] The bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0. Before you specify this parameter, make sure that you create an inter-region VPC peering connection.
  /// [description] The description of the VPC peering connection.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [forceDelete] Specifies whether to forcefully delete the VPC peering connection. Valid values:
  /// [linkType] The link type of the VPC peering connection that you want to create. Valid values:
  /// [peerConnectionName] The name of the VPC peering connection.
  /// [resourceGroupId] The ID of the new resource group.
  /// [status] The status of the resource
  /// [tags] The tags of VpcPeer.
  /// [vpcId] The ID of the requester VPC or accepter VPC of the VPC peering connection that you want to query.
  PeerConnectionArgs({
    pulumi.Output<int>? acceptingAliUid,
    required pulumi.Output<String> acceptingRegionId,
    required pulumi.Output<String> acceptingVpcId,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? linkType,
    pulumi.Output<String>? peerConnectionName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      acceptingAliUid = pulumi.Input.asOptionalInput<int>(acceptingAliUid),
      acceptingRegionId = pulumi.Input.asInput<String>(acceptingRegionId),
      acceptingVpcId = pulumi.Input.asInput<String>(acceptingVpcId),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      linkType = pulumi.Input.asOptionalInput<String>(linkType),
      peerConnectionName = pulumi.Input.asOptionalInput<String>(peerConnectionName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptingAliUid': ?acceptingAliUid,
      'acceptingRegionId': acceptingRegionId,
      'acceptingVpcId': acceptingVpcId,
      'bandwidth': ?bandwidth,
      'description': ?description,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'linkType': ?linkType,
      'peerConnectionName': ?peerConnectionName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory PeerConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PeerConnectionArgs(
      acceptingAliUid: map['acceptingAliUid'] == null ? null : pulumi.Output.create<int>(map['acceptingAliUid'] as int),
      acceptingRegionId: pulumi.Output.create<String>(map['acceptingRegionId'] as String),
      acceptingVpcId: pulumi.Output.create<String>(map['acceptingVpcId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      linkType: map['linkType'] == null ? null : pulumi.Output.create<String>(map['linkType'] as String),
      peerConnectionName: map['peerConnectionName'] == null ? null : pulumi.Output.create<String>(map['peerConnectionName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

