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
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? securityGroupId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory InstanceSecurityGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceSecurityGroupAttachmentState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
    );
  }
}

