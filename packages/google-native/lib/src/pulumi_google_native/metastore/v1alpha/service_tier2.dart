/// The tier of the service.
enum ServiceTier2 {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTier2(this.value);
  final String value;

  static ServiceTier2 fromValue(String value) {
    for (final item in ServiceTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTier2 value: $value');
  }
}
