/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum GlobalForwardingRuleIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalForwardingRuleIpVersion2(this.value);
  final String value;

  static GlobalForwardingRuleIpVersion2 fromValue(String value) {
    for (final item in GlobalForwardingRuleIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleIpVersion2 value: $value');
  }
}
