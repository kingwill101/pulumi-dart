/// The tier of the service.
enum ServiceTier3 {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTier3(this.value);
  final String value;

  static ServiceTier3 fromValue(String value) {
    for (final item in ServiceTier3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTier3 value: $value');
  }
}
