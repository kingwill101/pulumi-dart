/// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
enum RouterNatAutoNetworkTierComputeV1 {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const RouterNatAutoNetworkTierComputeV1(this.value);
  final String value;

  static RouterNatAutoNetworkTierComputeV1 fromValue(String value) {
    for (final item in RouterNatAutoNetworkTierComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterNatAutoNetworkTierComputeV1 value: $value',
    );
  }
}
