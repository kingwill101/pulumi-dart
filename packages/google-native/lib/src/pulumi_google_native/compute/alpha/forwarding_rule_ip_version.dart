/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersion(this.value);
  final String value;

  static ForwardingRuleIpVersion fromValue(String value) {
    for (final item in ForwardingRuleIpVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpVersion value: $value');
  }
}
