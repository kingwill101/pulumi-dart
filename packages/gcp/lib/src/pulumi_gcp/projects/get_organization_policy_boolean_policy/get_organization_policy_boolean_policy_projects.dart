// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyBooleanPolicyProjects {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  GetOrganizationPolicyBooleanPolicyProjects({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory GetOrganizationPolicyBooleanPolicyProjects.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyBooleanPolicyProjects(
      enforced: map['enforced'] as bool,
    );
  }
}
