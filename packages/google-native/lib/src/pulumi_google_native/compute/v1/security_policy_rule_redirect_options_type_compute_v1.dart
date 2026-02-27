/// Type of the redirect action.
enum SecurityPolicyRuleRedirectOptionsTypeComputeV1 {
  external302("EXTERNAL_302"),
  googleRecaptcha("GOOGLE_RECAPTCHA");

  const SecurityPolicyRuleRedirectOptionsTypeComputeV1(this.value);
  final String value;

  static SecurityPolicyRuleRedirectOptionsTypeComputeV1 fromValue(
      String value) {
    for (final item in SecurityPolicyRuleRedirectOptionsTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleRedirectOptionsTypeComputeV1 value: $value');
  }
}
