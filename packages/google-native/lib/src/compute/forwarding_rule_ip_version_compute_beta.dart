/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersionComputeBeta(this.value);
  final String value;

  static ForwardingRuleIpVersionComputeBeta fromValue(String value) {
    for (final item in ForwardingRuleIpVersionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ForwardingRuleIpVersionComputeBeta value: $value');
  }
}
