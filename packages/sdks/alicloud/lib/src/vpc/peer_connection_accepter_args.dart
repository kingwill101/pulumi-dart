// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_peer_connection_accepter_peer_connection_accepter_args_doc}
/// The set of arguments for PeerConnectionAccepter.
/// {@endtemplate}
/// {@macro pulumi_vpc_peer_connection_accepter_peer_connection_accepter_args_doc}
class PeerConnectionAccepterArgs {
  /// The new bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0.
  final pulumi.Input<int>? bandwidth;
  /// The new description of the VPC peering connection.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to forcefully delete the VPC peering connection. Valid values:
  final pulumi.Input<bool>? forceDelete;
  /// The ID of the VPC peering connection whose name or description you want to modify.
  final pulumi.Input<String> instanceId;
  /// Link Type
  final pulumi.Input<String>? linkType;
  /// The new name of the VPC peering connection.
  /// The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? peerConnectionAccepterName;
  /// The ID of the new resource group.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [PeerConnectionAccepterArgs].
  /// [bandwidth] The new bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0.
  /// [description] The new description of the VPC peering connection.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [forceDelete] Specifies whether to forcefully delete the VPC peering connection. Valid values:
  /// [instanceId] The ID of the VPC peering connection whose name or description you want to modify.
  /// [linkType] Link Type
  /// [peerConnectionAccepterName] The new name of the VPC peering connection.
  /// [resourceGroupId] The ID of the new resource group.
  const PeerConnectionAccepterArgs({
    this.bandwidth,
    this.description,
    this.dryRun,
    this.forceDelete,
    required this.instanceId,
    this.linkType,
    this.peerConnectionAccepterName,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'description': ?description,
      'dryRun': ?dryRun,
      'forceDelete': ?forceDelete,
      'instanceId': instanceId,
      'linkType': ?linkType,
      'peerConnectionAccepterName': ?peerConnectionAccepterName,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory PeerConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return PeerConnectionAccepterArgs(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      linkType: (() { final guardedValue = map['linkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerConnectionAccepterName: (() { final guardedValue = map['peerConnectionAccepterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

