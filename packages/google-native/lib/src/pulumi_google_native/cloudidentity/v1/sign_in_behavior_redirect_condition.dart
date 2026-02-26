/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectCondition {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never("NEVER");

  const SignInBehaviorRedirectCondition(this.value);
  final String value;

  static SignInBehaviorRedirectCondition fromValue(String value) {
    for (final item in SignInBehaviorRedirectCondition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SignInBehaviorRedirectCondition value: $value');
  }
}
