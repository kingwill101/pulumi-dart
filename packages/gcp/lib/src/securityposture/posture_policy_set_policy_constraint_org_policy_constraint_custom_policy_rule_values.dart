// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleValues {
  /// List of values allowed at this resource.
  final List<String>? allowedValues;

  /// List of values denied at this resource.
  final List<String>? deniedValues;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleValues].
  /// [allowedValues] List of values allowed at this resource.
  /// [deniedValues] List of values denied at this resource.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleValues({
    this.allowedValues,
    this.deniedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'deniedValues': ?deniedValues,
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleValues.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleValues(
      allowedValues: map['allowedValues'] == null
          ? null
          : (map['allowedValues'] as List).cast<String>(),
      deniedValues: map['deniedValues'] == null
          ? null
          : (map['deniedValues'] as List).cast<String>(),
    );
  }
}
