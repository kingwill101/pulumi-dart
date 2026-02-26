/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum GlobalForwardingRuleIpVersion3 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalForwardingRuleIpVersion3(this.value);
  final String value;

  static GlobalForwardingRuleIpVersion3 fromValue(String value) {
    for (final item in GlobalForwardingRuleIpVersion3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleIpVersion3 value: $value');
  }
}
