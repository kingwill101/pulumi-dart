// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_role_policies_get_role_policies_args_doc}
/// Arguments for getRolePolicies.
/// {@endtemplate}
/// {@macro pulumi_iam_get_role_policies_get_role_policies_args_doc}
class GetRolePoliciesArgs {
  /// Name of the IAM role.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetRolePoliciesArgs].
  /// [roleName] Name of the IAM role.
  const GetRolePoliciesArgs({
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleName': roleName,
    };
  }

  factory GetRolePoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetRolePoliciesArgs(
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
