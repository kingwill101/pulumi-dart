/// Gets or sets the azure SQL service tier.
enum AzureSqlServiceTierV3 {
  sqlServiceUnknown("SqlService_Unknown"),
  sqlServiceAutomatic("SqlService_Automatic"),
  sqlServiceGeneralPurpose("SqlService_GeneralPurpose"),
  sqlServiceBusinessCritical("SqlService_BusinessCritical"),
  sqlServiceHyperScale("SqlService_HyperScale");

  const AzureSqlServiceTierV3(this.wireValue);
  final String wireValue;

  static AzureSqlServiceTierV3 fromValue(String value) {
    for (final item in AzureSqlServiceTierV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlServiceTierV3 value: $value');
  }
}
