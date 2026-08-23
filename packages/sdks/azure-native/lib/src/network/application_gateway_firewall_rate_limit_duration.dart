/// Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
enum ApplicationGatewayFirewallRateLimitDuration {
  valueOneMin("OneMin"),
  valueFiveMins("FiveMins");

  const ApplicationGatewayFirewallRateLimitDuration(this.wireValue);
  final String wireValue;

  static ApplicationGatewayFirewallRateLimitDuration fromValue(String value) {
    for (final item in ApplicationGatewayFirewallRateLimitDuration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayFirewallRateLimitDuration value: $value');
  }
}
