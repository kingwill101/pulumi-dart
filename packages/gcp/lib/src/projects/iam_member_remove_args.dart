// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_iam_member_remove_iam_member_remove_args_doc}
/// The set of arguments for IamMemberRemove.
/// {@endtemplate}
/// {@macro pulumi_projects_iam_member_remove_iam_member_remove_args_doc}
class IamMemberRemoveArgs {
  /// The IAM principal that should not have the target role.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;
  /// The project id of the target project.
  final pulumi.Input<String> project;
  /// The target role that should be removed.
  final pulumi.Input<String> role;

  /// Creates a new [IamMemberRemoveArgs].
  /// [member] The IAM principal that should not have the target role.
  /// [project] The project id of the target project.
  /// [role] The target role that should be removed.
  IamMemberRemoveArgs({
    required String member,
    required String project,
    required String role,
  }) :
      member = pulumi.Input.asInput<String>(member),
      project = pulumi.Input.asInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': member,
      'project': project,
      'role': role,
    };
  }

  factory IamMemberRemoveArgs.fromMap(Map<String, dynamic> map) {
    return IamMemberRemoveArgs(
      member: map['member'] as String,
      project: map['project'] as String,
      role: map['role'] as String,
    );
  }
}

