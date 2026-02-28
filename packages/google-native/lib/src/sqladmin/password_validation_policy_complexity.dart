/// The complexity of the password.
enum PasswordValidationPolicyComplexity {
  complexityUnspecified("COMPLEXITY_UNSPECIFIED"),
  complexityDefault("COMPLEXITY_DEFAULT");

  const PasswordValidationPolicyComplexity(this.value);
  final String value;

  static PasswordValidationPolicyComplexity fromValue(String value) {
    for (final item in PasswordValidationPolicyComplexity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PasswordValidationPolicyComplexity value: $value');
  }
}
