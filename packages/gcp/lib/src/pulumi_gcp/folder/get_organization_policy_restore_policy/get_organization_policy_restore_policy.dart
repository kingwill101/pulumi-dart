// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationPolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final bool default_;

  GetOrganizationPolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['default'] = default_;
    return map;
  }

  factory GetOrganizationPolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyRestorePolicy(
      default_: map['default'] as bool,
    );
  }
}
