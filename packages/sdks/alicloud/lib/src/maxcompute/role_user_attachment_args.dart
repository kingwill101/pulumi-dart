// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maxcompute_role_user_attachment_role_user_attachment_args_doc}
/// The set of arguments for RoleUserAttachment.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_role_user_attachment_role_user_attachment_args_doc}
class RoleUserAttachmentArgs {
  /// Project Name
  final pulumi.Input<String> projectName;
  /// Role Name, Valid Values: super_administrator, admin, Custom Role
  ///
  /// &gt; **NOTE:** -- super_administrator: the built-in management role of MaxCompute. The Super Administrator of the project has the permission to operate all resources in the project and the management permission. Project owners or users with the Super_Administrator role can assign the Super_Administrator role to other users. -- admin: the built-in management role of MaxCompute, which has the permission to operate all resources in the project and some basic management permissions. Project owners can assign the Admin role to other users. -- Custom role: a role that is not built-in to MaxCompute and needs to be customized. You can refer to the role (starting with role_) definition in DataWorks.
  final pulumi.Input<String> roleName;
  /// Supported input: Alibaba Cloud account, RAM user, and RAM role
  ///
  /// &gt; **NOTE:** -- Alibaba Cloud account: the account registered on the Alibaba Cloud official website. - RAM User: a user created by an Alibaba Cloud account to assist the Alibaba Cloud account to complete data processing. -- RAM role: a RAM role, like a RAM user, is a type of RAM identity. A RAM role is a virtual user that does not have a specific identity authentication key and needs to be played by a trusted entity user for normal use.
  final pulumi.Input<String>? user;

  /// Creates a new [RoleUserAttachmentArgs].
  /// [projectName] Project Name
  /// [roleName] Role Name, Valid Values: super_administrator, admin, Custom Role
  /// [user] Supported input: Alibaba Cloud account, RAM user, and RAM role
  RoleUserAttachmentArgs({
    required this.projectName,
    required this.roleName,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'roleName': roleName,
      'user': ?user,
    };
  }

  factory RoleUserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleUserAttachmentArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

