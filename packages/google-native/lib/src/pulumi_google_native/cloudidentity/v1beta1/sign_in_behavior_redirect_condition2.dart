/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectCondition2 {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never("NEVER");

  const SignInBehaviorRedirectCondition2(this.value);
  final String value;

  static SignInBehaviorRedirectCondition2 fromValue(String value) {
    for (final item in SignInBehaviorRedirectCondition2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SignInBehaviorRedirectCondition2 value: $value');
  }
}
