// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_role_attachment_role_attachment_args_doc}
/// The set of arguments for RoleAttachment.
/// {@endtemplate}
/// {@macro pulumi_ram_role_attachment_role_attachment_args_doc}
class RoleAttachmentArgs {
  /// The list of ECS instance's IDs.
  final pulumi.Input<List<String>> instanceIds;
  /// The name of role used to bind. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-", "_", and must not begin with a hyphen.
  final pulumi.Input<String> roleName;

  /// Creates a new [RoleAttachmentArgs].
  /// [instanceIds] The list of ECS instance's IDs.
  /// [roleName] The name of role used to bind. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-", "_", and must not begin with a hyphen.
  RoleAttachmentArgs({
    required List<String> instanceIds,
    required String roleName,
  }) :
      instanceIds = pulumi.Input.asInput<List<String>>(instanceIds),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': instanceIds,
      'roleName': roleName,
    };
  }

  factory RoleAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAttachmentArgs(
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      roleName: map['roleName'] as String,
    );
  }
}

