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
    this.instanceId,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'securityGroupId': securityGroupId,
    };
  }

  factory InstanceSecurityGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSecurityGroupAttachmentArgs(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
    );
  }
}

