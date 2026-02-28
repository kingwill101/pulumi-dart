// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyComplianceStandard {
  /// Mapping of security controls for the policy.
  final String? control;

  /// Mapping of compliance standards for the policy.
  final String? standard;

  /// Creates a new [PosturePolicySetPolicyComplianceStandard].
  /// [control] Mapping of security controls for the policy.
  /// [standard] Mapping of compliance standards for the policy.
  PosturePolicySetPolicyComplianceStandard({
    this.control,
    this.standard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlValue = control;
    if (controlValue != null) {
      map['control'] = controlValue;
    }
    final standardValue = standard;
    if (standardValue != null) {
      map['standard'] = standardValue;
    }
    return map;
  }

  factory PosturePolicySetPolicyComplianceStandard.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyComplianceStandard(
      control: map['control'] == null ? null : map['control'] as String,
      standard: map['standard'] == null ? null : map['standard'] as String,
    );
  }
}
