/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExpr2 {
  firewall("FIREWALL"),
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExpr2(this.value);
  final String value;

  static SecurityPolicyRuleMatcherVersionedExpr2 fromValue(String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExpr2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyRuleMatcherVersionedExpr2 value: $value');
  }
}
