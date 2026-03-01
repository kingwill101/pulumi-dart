// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyComplianceStandard {
  /// Mapping of security controls for the policy.
  final String? control;

  /// Mapping of compliance standards for the policy.
  final String? standard;

  /// Creates a new [PosturePolicySetPolicyComplianceStandard].
  /// [control] Mapping of security controls for the policy.
  /// [standard] Mapping of compliance standards for the policy.
  PosturePolicySetPolicyComplianceStandard({this.control, this.standard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'control': ?control, 'standard': ?standard};
  }

  factory PosturePolicySetPolicyComplianceStandard.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyComplianceStandard(
      control: map['control'] == null ? null : map['control'] as String,
      standard: map['standard'] == null ? null : map['standard'] as String,
    );
  }
}
