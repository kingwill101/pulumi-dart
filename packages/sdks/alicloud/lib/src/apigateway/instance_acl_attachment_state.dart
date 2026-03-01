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
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? aclType,
    pulumi.Output<String>? instanceId,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      aclType = pulumi.Input.asOptionalInput<String>(aclType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'aclType': ?aclType,
      'instanceId': ?instanceId,
    };
  }

  factory InstanceAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAclAttachmentState(
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      aclType: map['aclType'] == null ? null : pulumi.Output.create<String>(map['aclType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

