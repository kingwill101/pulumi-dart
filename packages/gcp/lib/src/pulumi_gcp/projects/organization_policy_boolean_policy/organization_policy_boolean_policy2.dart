// ignore_for_file: unused_element, unnecessary_cast

class OrganizationPolicyBooleanPolicy2 {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  OrganizationPolicyBooleanPolicy2({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory OrganizationPolicyBooleanPolicy2.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyBooleanPolicy2(
      enforced: map['enforced'] as bool,
    );
  }
}
