/// This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
enum ForwardingRuleNetworkTier {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  select("SELECT"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const ForwardingRuleNetworkTier(this.value);
  final String value;

  static ForwardingRuleNetworkTier fromValue(String value) {
    for (final item in ForwardingRuleNetworkTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleNetworkTier value: $value');
  }
}
