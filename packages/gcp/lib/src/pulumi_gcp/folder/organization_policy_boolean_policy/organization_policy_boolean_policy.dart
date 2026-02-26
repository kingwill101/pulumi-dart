// ignore_for_file: unused_element, unnecessary_cast

class OrganizationPolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  OrganizationPolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory OrganizationPolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyBooleanPolicy(
      enforced: map['enforced'] as bool,
    );
  }
}
