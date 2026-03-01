/// Gets or sets the azure SQL service tier.
enum AzureSqlServiceTierV3 {
  sqlServiceUnknown("SqlService_Unknown"),
  sqlServiceAutomatic("SqlService_Automatic"),
  sqlServiceGeneralPurpose("SqlService_GeneralPurpose"),
  sqlServiceBusinessCritical("SqlService_BusinessCritical"),
  sqlServiceHyperScale("SqlService_HyperScale");

  const AzureSqlServiceTierV3(this.value);
  final String value;

  static AzureSqlServiceTierV3 fromValue(String value) {
    for (final item in AzureSqlServiceTierV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlServiceTierV3 value: $value');
  }
}

