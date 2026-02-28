// ignore_for_file: unused_element, unnecessary_cast

class RoleInlinePolicy {
  /// Name of the role policy.
  final String? name;

  /// Policy document as a JSON formatted string.
  final String? policy;

  /// Creates a new [RoleInlinePolicy].
  /// [name] Name of the role policy.
  /// [policy] Policy document as a JSON formatted string.
  RoleInlinePolicy({
    this.name,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    return map;
  }

  factory RoleInlinePolicy.fromMap(Map<String, dynamic> map) {
    return RoleInlinePolicy(
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
