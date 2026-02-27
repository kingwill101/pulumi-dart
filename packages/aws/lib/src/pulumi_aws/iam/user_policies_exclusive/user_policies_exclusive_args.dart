// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPoliciesExclusive.
class UserPoliciesExclusiveArgs {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;

  /// IAM user name.
  final pulumi.Input<String> userName;

  UserPoliciesExclusiveArgs({
    required this.policyNames,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyNames'] = policyNames;
    map['userName'] = userName;
    return map;
  }

  factory UserPoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return UserPoliciesExclusiveArgs(
      policyNames: pulumi.Input.asInput<List<String>>(map['policyNames']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
