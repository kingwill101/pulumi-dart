// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAclAttachment resources.
class InstanceAclAttachmentState {
  /// The ID of the ACL to attach.
  final pulumi.Input<String>? aclId;
  /// The type of the ACL. Valid values: `white`, `black`.
  final pulumi.Input<String>? aclType;
  /// The ID of the API Gateway instance that the ACL will be attached to.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [InstanceAclAttachmentState].
  /// [aclId] The ID of the ACL to attach.
  /// [aclType] The type of the ACL. Valid values: `white`, `black`.
  /// [instanceId] The ID of the API Gateway instance that the ACL will be attached to.
  InstanceAclAttachmentState({
    this.aclId,
    this.aclType,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'aclType': ?aclType,
      'instanceId': ?instanceId,
    };
  }

  factory InstanceAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAclAttachmentState(
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      aclType: map['aclType'] == null ? null : (map['aclType'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
    );
  }
}

