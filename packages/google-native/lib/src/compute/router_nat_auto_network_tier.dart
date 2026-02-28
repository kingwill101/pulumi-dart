/// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
enum RouterNatAutoNetworkTier {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  select("SELECT"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const RouterNatAutoNetworkTier(this.value);
  final String value;

  static RouterNatAutoNetworkTier fromValue(String value) {
    for (final item in RouterNatAutoNetworkTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatAutoNetworkTier value: $value');
  }
}
