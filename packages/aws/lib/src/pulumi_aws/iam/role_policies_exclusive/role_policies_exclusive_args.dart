// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RolePoliciesExclusive.
class RolePoliciesExclusiveArgs {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  final Input<List<String>> policyNames;

  /// IAM role name.
  final Input<String> roleName;

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
      policyNames: Input.asInput<List<String>>(map['policyNames']),
      roleName: Input.asInput<String>(map['roleName']),
    );
  }
}
