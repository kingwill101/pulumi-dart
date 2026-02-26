/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsType3 {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsType3(this.value);
  final String value;

  static SecurityPolicyRuleRedirectOptionsType3 fromValue(String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleRedirectOptionsType3 value: $value');
  }
}
