/// Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
enum PersistenceConfigRdbSnapshotPeriod2 {
  snapshotPeriodUnspecified("SNAPSHOT_PERIOD_UNSPECIFIED"),
  oneHour("ONE_HOUR"),
  sixHours("SIX_HOURS"),
  twelveHours("TWELVE_HOURS"),
  twentyFourHours("TWENTY_FOUR_HOURS");

  const PersistenceConfigRdbSnapshotPeriod2(this.value);
  final String value;

  static PersistenceConfigRdbSnapshotPeriod2 fromValue(String value) {
    for (final item in PersistenceConfigRdbSnapshotPeriod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PersistenceConfigRdbSnapshotPeriod2 value: $value');
  }
}
