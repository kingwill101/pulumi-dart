/// This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
enum AccessConfigNetworkTierComputeV1 {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const AccessConfigNetworkTierComputeV1(this.value);
  final String value;

  static AccessConfigNetworkTierComputeV1 fromValue(String value) {
    for (final item in AccessConfigNetworkTierComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AccessConfigNetworkTierComputeV1 value: $value');
  }
}
