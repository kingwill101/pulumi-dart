/// The tier of the service.
enum ServiceTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTier(this.value);
  final String value;

  static ServiceTier fromValue(String value) {
    for (final item in ServiceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTier value: $value');
  }
}

