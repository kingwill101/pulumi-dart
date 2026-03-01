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
    pulumi.Output<String>? networkAclId,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
  }) :
      networkAclId = pulumi.Input.asOptionalInput<String>(networkAclId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      networkAclId: map['networkAclId'] == null ? null : pulumi.Output.create<String>(map['networkAclId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

