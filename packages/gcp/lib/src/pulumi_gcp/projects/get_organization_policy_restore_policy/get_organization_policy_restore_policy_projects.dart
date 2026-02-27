// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyRestorePolicyProjects {
  /// May only be set to true. If set, then the default Policy is restored.
  final bool default_;

  GetOrganizationPolicyRestorePolicyProjects({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['default'] = default_;
    return map;
  }

  factory GetOrganizationPolicyRestorePolicyProjects.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyRestorePolicyProjects(
      default_: map['default'] as bool,
    );
  }
}
