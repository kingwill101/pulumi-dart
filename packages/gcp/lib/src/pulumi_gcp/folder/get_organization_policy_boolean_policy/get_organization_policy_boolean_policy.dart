// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  GetOrganizationPolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory GetOrganizationPolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyBooleanPolicy(
      enforced: map['enforced'] as bool,
    );
  }
}
