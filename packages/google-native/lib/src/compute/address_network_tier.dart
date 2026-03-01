/// This signifies the networking tier used for configuring this address and can only take the following values: PREMIUM or STANDARD. Internal IP addresses are always Premium Tier; global external IP addresses are always Premium Tier; regional external IP addresses can be either Standard or Premium Tier. If this field is not specified, it is assumed to be PREMIUM.
enum AddressNetworkTier {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  select("SELECT"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const AddressNetworkTier(this.value);
  final String value;

  static AddressNetworkTier fromValue(String value) {
    for (final item in AddressNetworkTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressNetworkTier value: $value');
  }
}
