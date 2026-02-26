// ignore_for_file: unused_element, unnecessary_cast

class OrganizationPolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final bool default_;

  OrganizationPolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['default'] = default_;
    return map;
  }

  factory OrganizationPolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyRestorePolicy(
      default_: map['default'] as bool,
    );
  }
}
