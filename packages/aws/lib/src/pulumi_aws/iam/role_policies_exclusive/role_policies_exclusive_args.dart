// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RolePoliciesExclusive.
class RolePoliciesExclusiveArgs {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;

  /// IAM role name.
  final pulumi.Input<String> roleName;

  RolePoliciesExclusiveArgs({
    required this.policyNames,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyNames'] = policyNames;
    map['roleName'] = roleName;
    return map;
  }

  factory RolePoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RolePoliciesExclusiveArgs(
      policyNames: pulumi.Input.asInput<List<String>>(map['policyNames']),
      roleName: pulumi.Input.asInput<String>(map['roleName']),
    );
  }
}
