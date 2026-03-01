/// Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
enum ApplicationGatewayFirewallRateLimitDuration {
  valueOneMin("OneMin"),
  valueFiveMins("FiveMins");

  const ApplicationGatewayFirewallRateLimitDuration(this.value);
  final String value;

  static ApplicationGatewayFirewallRateLimitDuration fromValue(String value) {
    for (final item in ApplicationGatewayFirewallRateLimitDuration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallRateLimitDuration value: $value');
  }
}

