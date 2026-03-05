// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceSecurityGroupAttachment resources.
class InstanceSecurityGroupAttachmentState {
  /// Instance ID.
  final pulumi.Input<String>? instanceId;
  /// Security group ID.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [InstanceSecurityGroupAttachmentState].
  /// [instanceId] Instance ID.
  /// [securityGroupId] Security group ID.
  InstanceSecurityGroupAttachmentState({
    this.instanceId,
    this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory InstanceSecurityGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceSecurityGroupAttachmentState(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

