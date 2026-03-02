// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcNetworkAclAttachment resources.
class VpcNetworkAclAttachmentState {
  /// The ID of the network ACL instance.
  final pulumi.Input<String>? networkAclId;
  /// The ID of the associated  vswitch instance.
  final pulumi.Input<String>? resourceId;
  /// The type of the associated resource. Valid values: `VSwitch`.
  final pulumi.Input<String>? resourceType;
  /// The status of the Network Acl Attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [VpcNetworkAclAttachmentState].
  /// [networkAclId] The ID of the network ACL instance.
  /// [resourceId] The ID of the associated  vswitch instance.
  /// [resourceType] The type of the associated resource. Valid values: `VSwitch`.
  /// [status] The status of the Network Acl Attachment.
  VpcNetworkAclAttachmentState({
    this.networkAclId,
    this.resourceId,
    this.resourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': ?networkAclId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
    };
  }

  factory VpcNetworkAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return VpcNetworkAclAttachmentState(
      networkAclId: map['networkAclId'] == null ? null : (map['networkAclId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

