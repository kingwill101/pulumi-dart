/// The public delegated prefix mode for IPv6 only.
enum GlobalPublicDelegatedPrefixMode {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const GlobalPublicDelegatedPrefixMode(this.value);
  final String value;

  static GlobalPublicDelegatedPrefixMode fromValue(String value) {
    for (final item in GlobalPublicDelegatedPrefixMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GlobalPublicDelegatedPrefixMode value: $value');
  }
}
