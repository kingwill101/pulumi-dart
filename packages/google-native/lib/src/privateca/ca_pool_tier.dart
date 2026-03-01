/// Required. Immutable. The Tier of this CaPool.
enum CaPoolTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  devops("DEVOPS");

  const CaPoolTier(this.value);
  final String value;

  static CaPoolTier fromValue(String value) {
    for (final item in CaPoolTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaPoolTier value: $value');
  }
}
