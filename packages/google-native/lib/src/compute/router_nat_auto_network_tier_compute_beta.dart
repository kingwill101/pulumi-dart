/// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
enum RouterNatAutoNetworkTierComputeBeta {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const RouterNatAutoNetworkTierComputeBeta(this.value);
  final String value;

  static RouterNatAutoNetworkTierComputeBeta fromValue(String value) {
    for (final item in RouterNatAutoNetworkTierComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterNatAutoNetworkTierComputeBeta value: $value',
    );
  }
}
