import 'package:pulumi/pulumi.dart' as pulumi;

/// Duration over which Rate Limit policy will be applied. Applies only when ruleType is RateLimitRule.
enum ApplicationGatewayFirewallRateLimitDuration implements pulumi.PulumiEnum<String> {
  valueOneMin("OneMin"),
  valueFiveMins("FiveMins");

  const ApplicationGatewayFirewallRateLimitDuration(this.wireValue);
  @override
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
