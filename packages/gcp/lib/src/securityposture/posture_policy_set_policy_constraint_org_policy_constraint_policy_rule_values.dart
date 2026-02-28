// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues {
  /// List of values allowed at this resource.
  final List<String>? allowedValues;

  /// List of values denied at this resource.
  final List<String>? deniedValues;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues].
  /// [allowedValues] List of values allowed at this resource.
  /// [deniedValues] List of values denied at this resource.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues({
    this.allowedValues,
    this.deniedValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedValuesValue = allowedValues;
    if (allowedValuesValue != null) {
      map['allowedValues'] = allowedValuesValue;
    }
    final deniedValuesValue = deniedValues;
    if (deniedValuesValue != null) {
      map['deniedValues'] = deniedValuesValue;
    }
    return map;
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleValues(
      allowedValues: map['allowedValues'] == null
          ? null
          : (map['allowedValues'] as List).cast<String>(),
      deniedValues: map['deniedValues'] == null
          ? null
          : (map['deniedValues'] as List).cast<String>(),
    );
  }
}
