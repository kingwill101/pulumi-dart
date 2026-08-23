/// Gets or sets the azure SQL service tier.
enum AzureSqlServiceTier {
  valueUnknown("Unknown"),
  valueAutomatic("Automatic"),
  valueGeneralPurpose("GeneralPurpose"),
  valueBusinessCritical("BusinessCritical"),
  valueHyperScale("HyperScale");

  const AzureSqlServiceTier(this.wireValue);
  final String wireValue;

  static AzureSqlServiceTier fromValue(String value) {
    for (final item in AzureSqlServiceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlServiceTier value: $value');
  }
}
