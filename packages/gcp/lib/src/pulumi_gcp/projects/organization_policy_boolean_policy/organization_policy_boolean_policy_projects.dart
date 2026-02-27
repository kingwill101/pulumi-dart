// ignore_for_file: unused_element, unnecessary_cast

class OrganizationPolicyBooleanPolicyProjects {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  OrganizationPolicyBooleanPolicyProjects({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory OrganizationPolicyBooleanPolicyProjects.fromMap(
      Map<String, dynamic> map) {
    return OrganizationPolicyBooleanPolicyProjects(
      enforced: map['enforced'] as bool,
    );
  }
}
