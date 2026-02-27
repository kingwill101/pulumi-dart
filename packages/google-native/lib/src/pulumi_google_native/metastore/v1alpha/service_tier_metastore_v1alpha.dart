/// The tier of the service.
enum ServiceTierMetastoreV1alpha {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTierMetastoreV1alpha(this.value);
  final String value;

  static ServiceTierMetastoreV1alpha fromValue(String value) {
    for (final item in ServiceTierMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTierMetastoreV1alpha value: $value');
  }
}
