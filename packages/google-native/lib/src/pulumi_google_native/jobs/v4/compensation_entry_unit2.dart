/// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
enum CompensationEntryUnit2 {
  compensationUnitUnspecified("COMPENSATION_UNIT_UNSPECIFIED"),
  hourly("HOURLY"),
  daily("DAILY"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  yearly("YEARLY"),
  oneTime("ONE_TIME"),
  otherCompensationUnit("OTHER_COMPENSATION_UNIT");

  const CompensationEntryUnit2(this.value);
  final String value;

  static CompensationEntryUnit2 fromValue(String value) {
    for (final item in CompensationEntryUnit2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryUnit2 value: $value');
  }
}
