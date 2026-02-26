/// The public delegated prefix mode for IPv6 only.
enum PublicDelegatedPrefixMode {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const PublicDelegatedPrefixMode(this.value);
  final String value;

  static PublicDelegatedPrefixMode fromValue(String value) {
    for (final item in PublicDelegatedPrefixMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicDelegatedPrefixMode value: $value');
  }
}
