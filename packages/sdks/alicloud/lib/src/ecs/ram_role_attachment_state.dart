// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RamRoleAttachment resources.
class RamRoleAttachmentState {
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The additional policy. When you attach an instance RAM role to instances, you can specify an additional policy to further limit the permissions of the role.
  final pulumi.Input<String>? policy;
  /// The name of the instance RAM role.
  final pulumi.Input<String>? ramRoleName;

  /// Creates a new [RamRoleAttachmentState].
  /// [instanceId] The ID of the instance.
  /// [policy] The additional policy. When you attach an instance RAM role to instances, you can specify an additional policy to further limit the permissions of the role.
  /// [ramRoleName] The name of the instance RAM role.
  const RamRoleAttachmentState({
    this.instanceId,
    this.policy,
    this.ramRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'policy': ?policy,
      'ramRoleName': ?ramRoleName,
    };
  }

  factory RamRoleAttachmentState.fromMap(Map<String, dynamic> map) {
    return RamRoleAttachmentState(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

