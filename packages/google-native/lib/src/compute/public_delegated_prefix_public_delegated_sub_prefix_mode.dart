/// The PublicDelegatedSubPrefix mode for IPv6 only.
enum PublicDelegatedPrefixPublicDelegatedSubPrefixMode {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const PublicDelegatedPrefixPublicDelegatedSubPrefixMode(this.value);
  final String value;

  static PublicDelegatedPrefixPublicDelegatedSubPrefixMode fromValue(
    String value,
  ) {
    for (final item
        in PublicDelegatedPrefixPublicDelegatedSubPrefixMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PublicDelegatedPrefixPublicDelegatedSubPrefixMode value: $value',
    );
  }
}
