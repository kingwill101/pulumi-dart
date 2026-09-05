// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRolePolicies.
class GetRolePoliciesResult {
  /// Set of inline policy names associated with the role.
  final List<String>? policyNames;
  final String? roleName;

  /// Creates a new [GetRolePoliciesResult].
  /// [policyNames] Set of inline policy names associated with the role.
  /// [roleName] Optional.
  const GetRolePoliciesResult({
    this.policyNames,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyNames': ?policyNames,
      'roleName': ?roleName,
    };
  }

  factory GetRolePoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetRolePoliciesResult(
      policyNames: (() { final guardedValue = map['policyNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
