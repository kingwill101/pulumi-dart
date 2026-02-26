/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersion3 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersion3(this.value);
  final String value;

  static ForwardingRuleIpVersion3 fromValue(String value) {
    for (final item in ForwardingRuleIpVersion3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpVersion3 value: $value');
  }
}
