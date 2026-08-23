// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRolePolicies.
class GetRolePoliciesResult {
  /// Set of inline policy names associated with the role.
  final List<String> policyNames;
  final String roleName;

  /// Creates a new [GetRolePoliciesResult].
  /// [policyNames] Set of inline policy names associated with the role.
  /// [roleName] Required.
  const GetRolePoliciesResult({
    required this.policyNames,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyNames': policyNames,
      'roleName': roleName,
    };
  }

  factory GetRolePoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetRolePoliciesResult(
      policyNames: (map['policyNames'] as List).cast<String>(),
      roleName: map['roleName'] as String,
    );
  }
}
