// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_instance_acl_attachment_instance_acl_attachment_args_doc}
/// The set of arguments for InstanceAclAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigateway_instance_acl_attachment_instance_acl_attachment_args_doc}
class InstanceAclAttachmentArgs {
  /// The ID of the ACL to attach.
  final pulumi.Input<String> aclId;
  /// The type of the ACL. Valid values: `white`, `black`.
  final pulumi.Input<String> aclType;
  /// The ID of the API Gateway instance that the ACL will be attached to.
  final pulumi.Input<String> instanceId;

  /// Creates a new [InstanceAclAttachmentArgs].
  /// [aclId] The ID of the ACL to attach.
  /// [aclType] The type of the ACL. Valid values: `white`, `black`.
  /// [instanceId] The ID of the API Gateway instance that the ACL will be attached to.
  const InstanceAclAttachmentArgs({
    required this.aclId,
    required this.aclType,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'aclType': aclType,
      'instanceId': instanceId,
    };
  }

  factory InstanceAclAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAclAttachmentArgs(
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      aclType: pulumi.Input.fromValue(map['aclType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

