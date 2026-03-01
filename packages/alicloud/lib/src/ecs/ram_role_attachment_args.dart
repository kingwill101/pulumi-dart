// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ram_role_attachment_ram_role_attachment_args_doc}
/// The set of arguments for RamRoleAttachment.
/// {@endtemplate}
/// {@macro pulumi_ecs_ram_role_attachment_ram_role_attachment_args_doc}
class RamRoleAttachmentArgs {
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The additional policy. When you attach an instance RAM role to instances, you can specify an additional policy to further limit the permissions of the role.
  final pulumi.Input<String>? policy;
  /// The name of the instance RAM role.
  final pulumi.Input<String> ramRoleName;

  /// Creates a new [RamRoleAttachmentArgs].
  /// [instanceId] The ID of the instance.
  /// [policy] The additional policy. When you attach an instance RAM role to instances, you can specify an additional policy to further limit the permissions of the role.
  /// [ramRoleName] The name of the instance RAM role.
  RamRoleAttachmentArgs({
    required String instanceId,
    String? policy,
    required String ramRoleName,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      ramRoleName = pulumi.Input.asInput<String>(ramRoleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'policy': ?policy,
      'ramRoleName': ramRoleName,
    };
  }

  factory RamRoleAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RamRoleAttachmentArgs(
      instanceId: map['instanceId'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      ramRoleName: map['ramRoleName'] as String,
    );
  }
}

