// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_instance_security_group_attachment_instance_security_group_attachment_args_doc}
/// The set of arguments for InstanceSecurityGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_ens_instance_security_group_attachment_instance_security_group_attachment_args_doc}
class InstanceSecurityGroupAttachmentArgs {
  /// Instance ID.
  final pulumi.Input<String>? instanceId;
  /// Security group ID.
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [InstanceSecurityGroupAttachmentArgs].
  /// [instanceId] Instance ID.
  /// [securityGroupId] Security group ID.
  InstanceSecurityGroupAttachmentArgs({
    String? instanceId,
    required String securityGroupId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'securityGroupId': securityGroupId,
    };
  }

  factory InstanceSecurityGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSecurityGroupAttachmentArgs(
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      securityGroupId: map['securityGroupId'] as String,
    );
  }
}

