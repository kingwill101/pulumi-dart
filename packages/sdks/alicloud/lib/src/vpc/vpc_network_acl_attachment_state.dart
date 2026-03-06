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
  const VpcNetworkAclAttachmentState({
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
      networkAclId: (() { final guardedValue = map['networkAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

