/// When to redirect sign-ins to the IdP.
enum SignInBehaviorRedirectConditionCloudidentityV1beta1 {
  redirectConditionUnspecified("REDIRECT_CONDITION_UNSPECIFIED"),
  never("NEVER");

  const SignInBehaviorRedirectConditionCloudidentityV1beta1(this.value);
  final String value;

  static SignInBehaviorRedirectConditionCloudidentityV1beta1 fromValue(
      String value) {
    for (final item
        in SignInBehaviorRedirectConditionCloudidentityV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SignInBehaviorRedirectConditionCloudidentityV1beta1 value: $value');
  }
}
