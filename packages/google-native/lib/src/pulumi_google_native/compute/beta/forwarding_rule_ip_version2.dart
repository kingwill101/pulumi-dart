/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersion2(this.value);
  final String value;

  static ForwardingRuleIpVersion2 fromValue(String value) {
    for (final item in ForwardingRuleIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpVersion2 value: $value');
  }
}
