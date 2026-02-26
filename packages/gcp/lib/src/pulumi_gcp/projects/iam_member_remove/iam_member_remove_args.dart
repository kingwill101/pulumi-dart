// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IamMemberRemove.
class IamMemberRemoveArgs {
  /// The IAM principal that should not have the target role.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The project id of the target project.
  final Input<String> project;

  /// The target role that should be removed.
  final Input<String> role;

  IamMemberRemoveArgs({
    required this.member,
    required this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['member'] = member;
    map['project'] = project;
    map['role'] = role;
    return map;
  }

  factory IamMemberRemoveArgs.fromMap(Map<String, dynamic> map) {
    return IamMemberRemoveArgs(
      member: Input.asInput<String>(map['member']),
      project: Input.asInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
