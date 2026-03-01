/// Gets or sets the azure SQL service tier.
enum AzureSqlServiceTier {
  valueUnknown("Unknown"),
  valueAutomatic("Automatic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical"),
  valueHyperScale("HyperScale");

  const AzureSqlServiceTier(this.value);
  final String value;

  static AzureSqlServiceTier fromValue(String value) {
    for (final item in AzureSqlServiceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlServiceTier value: $value');
  }
}

