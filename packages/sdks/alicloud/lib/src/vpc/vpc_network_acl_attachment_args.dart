// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_vpc_network_acl_attachment_vpc_network_acl_attachment_args_doc}
/// The set of arguments for VpcNetworkAclAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_vpc_network_acl_attachment_vpc_network_acl_attachment_args_doc}
class VpcNetworkAclAttachmentArgs {
  /// The ID of the network ACL instance.
  final pulumi.Input<String> networkAclId;
  /// The ID of the associated  vswitch instance.
  final pulumi.Input<String> resourceId;
  /// The type of the associated resource. Valid values: `VSwitch`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [VpcNetworkAclAttachmentArgs].
  /// [networkAclId] The ID of the network ACL instance.
  /// [resourceId] The ID of the associated  vswitch instance.
  /// [resourceType] The type of the associated resource. Valid values: `VSwitch`.
  VpcNetworkAclAttachmentArgs({
    required this.networkAclId,
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': networkAclId,
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory VpcNetworkAclAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpcNetworkAclAttachmentArgs(
      networkAclId: pulumi.Input.fromValue(map['networkAclId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

