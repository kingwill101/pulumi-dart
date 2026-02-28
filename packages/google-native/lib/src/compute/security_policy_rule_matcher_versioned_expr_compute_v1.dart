/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExprComputeV1 {
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExprComputeV1(this.value);
  final String value;

  static SecurityPolicyRuleMatcherVersionedExprComputeV1 fromValue(
      String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExprComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleMatcherVersionedExprComputeV1 value: $value');
  }
}
