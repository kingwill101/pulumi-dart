/// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
enum AddressNetworkTier2 {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const AddressNetworkTier2(this.value);
  final String value;

  static AddressNetworkTier2 fromValue(String value) {
    for (final item in AddressNetworkTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressNetworkTier2 value: $value');
  }
}
