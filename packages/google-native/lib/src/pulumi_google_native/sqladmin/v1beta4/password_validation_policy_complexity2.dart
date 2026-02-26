/// The complexity of the password.
enum PasswordValidationPolicyComplexity2 {
  complexityUnspecified("COMPLEXITY_UNSPECIFIED"),
  complexityDefault("COMPLEXITY_DEFAULT");

  const PasswordValidationPolicyComplexity2(this.value);
  final String value;

  static PasswordValidationPolicyComplexity2 fromValue(String value) {
    for (final item in PasswordValidationPolicyComplexity2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PasswordValidationPolicyComplexity2 value: $value');
  }
}
