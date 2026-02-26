/// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
enum CompensationEntryType2 {
  compensationTypeUnspecified("COMPENSATION_TYPE_UNSPECIFIED"),
  base("BASE"),
  bonus("BONUS"),
  signingBonus("SIGNING_BONUS"),
  equity("EQUITY"),
  profitSharing("PROFIT_SHARING"),
  commissions("COMMISSIONS"),
  tips("TIPS"),
  otherCompensationType("OTHER_COMPENSATION_TYPE");

  const CompensationEntryType2(this.value);
  final String value;

  static CompensationEntryType2 fromValue(String value) {
    for (final item in CompensationEntryType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryType2 value: $value');
  }
}
