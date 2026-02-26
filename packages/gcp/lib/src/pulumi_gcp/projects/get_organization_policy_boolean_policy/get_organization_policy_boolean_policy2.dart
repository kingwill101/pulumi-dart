// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyBooleanPolicy2 {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  GetOrganizationPolicyBooleanPolicy2({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory GetOrganizationPolicyBooleanPolicy2.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyBooleanPolicy2(
      enforced: map['enforced'] as bool,
    );
  }
}
