/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExpr3 {
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExpr3(this.value);
  final String value;

  static SecurityPolicyRuleMatcherVersionedExpr3 fromValue(String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExpr3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleMatcherVersionedExpr3 value: $value');
  }
}
