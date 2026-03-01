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
  RamRoleAttachmentState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? ramRoleName,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'policy': ?policy,
      'ramRoleName': ?ramRoleName,
    };
  }

  factory RamRoleAttachmentState.fromMap(Map<String, dynamic> map) {
    return RamRoleAttachmentState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
    );
  }
}

