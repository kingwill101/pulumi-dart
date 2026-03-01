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
  /// > **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
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
  PeerConnectionAccepterArgs({
    int? bandwidth,
    String? description,
    bool? dryRun,
    bool? forceDelete,
    required String instanceId,
    String? linkType,
    String? peerConnectionAccepterName,
    String? resourceGroupId,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      linkType = pulumi.Input.asOptionalInput<String>(linkType),
      peerConnectionAccepterName = pulumi.Input.asOptionalInput<String>(peerConnectionAccepterName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

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
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      instanceId: map['instanceId'] as String,
      linkType: map['linkType'] == null ? null : map['linkType'] as String,
      peerConnectionAccepterName: map['peerConnectionAccepterName'] == null ? null : map['peerConnectionAccepterName'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
    );
  }
}

