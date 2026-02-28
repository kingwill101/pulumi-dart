// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_role_policies_exclusive_role_policies_exclusive_args_doc}
/// The set of arguments for RolePoliciesExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_role_policies_exclusive_role_policies_exclusive_args_doc}
class RolePoliciesExclusiveArgs {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;

  /// IAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [RolePoliciesExclusiveArgs].
  /// [policyNames] A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  /// [roleName] IAM role name.
  RolePoliciesExclusiveArgs({
    required List<String> policyNames,
    required String roleName,
  })  : policyNames = pulumi.Input.asInput<List<String>>(policyNames),
        roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyNames'] = policyNames;
    map['roleName'] = roleName;
    return map;
  }

  factory RolePoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RolePoliciesExclusiveArgs(
      policyNames: (map['policyNames'] as List).cast<String>(),
      roleName: map['roleName'] as String,
    );
  }
}
