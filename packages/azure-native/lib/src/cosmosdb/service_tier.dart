/// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
enum ServiceTier {
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical");

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

