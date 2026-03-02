// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_policies_exclusive_user_policies_exclusive_args_doc}
/// The set of arguments for UserPoliciesExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_user_policies_exclusive_user_policies_exclusive_args_doc}
class UserPoliciesExclusiveArgs {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;
  /// IAM user name.
  final pulumi.Input<String> userName;

  /// Creates a new [UserPoliciesExclusiveArgs].
  /// [policyNames] A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  /// [userName] IAM user name.
  UserPoliciesExclusiveArgs({
    required this.policyNames,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyNames': policyNames,
      'userName': userName,
    };
  }

  factory UserPoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return UserPoliciesExclusiveArgs(
      policyNames: ((map['policyNames'] as List).cast<String>()).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

