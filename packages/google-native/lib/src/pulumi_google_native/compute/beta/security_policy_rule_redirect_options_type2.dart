/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsType2 {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsType2(this.value);
  final String value;

  static SecurityPolicyRuleRedirectOptionsType2 fromValue(String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleRedirectOptionsType2 value: $value');
  }
}
