// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleUserAttachment resources.
class RoleUserAttachmentState {
  /// Project Name
  final pulumi.Input<String>? projectName;
  /// Role Name, Valid Values: super_administrator, admin, Custom Role
  ///
  /// > **NOTE:** -- super_administrator: the built-in management role of MaxCompute. The Super Administrator of the project has the permission to operate all resources in the project and the management permission. Project owners or users with the Super_Administrator role can assign the Super_Administrator role to other users. -- admin: the built-in management role of MaxCompute, which has the permission to operate all resources in the project and some basic management permissions. Project owners can assign the Admin role to other users. -- Custom role: a role that is not built-in to MaxCompute and needs to be customized. You can refer to the role (starting with role_) definition in DataWorks.
  final pulumi.Input<String>? roleName;
  /// Supported input: Alibaba Cloud account, RAM user, and RAM role
  ///
  /// > **NOTE:** -- Alibaba Cloud account: the account registered on the Alibaba Cloud official website. - RAM User: a user created by an Alibaba Cloud account to assist the Alibaba Cloud account to complete data processing. -- RAM role: a RAM role, like a RAM user, is a type of RAM identity. A RAM role is a virtual user that does not have a specific identity authentication key and needs to be played by a trusted entity user for normal use.
  final pulumi.Input<String>? user;

  /// Creates a new [RoleUserAttachmentState].
  /// [projectName] Project Name
  /// [roleName] Role Name, Valid Values: super_administrator, admin, Custom Role
  /// [user] Supported input: Alibaba Cloud account, RAM user, and RAM role
  RoleUserAttachmentState({
    this.projectName,
    this.roleName,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': ?projectName,
      'roleName': ?roleName,
      'user': ?user,
    };
  }

  factory RoleUserAttachmentState.fromMap(Map<String, dynamic> map) {
    return RoleUserAttachmentState(
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

