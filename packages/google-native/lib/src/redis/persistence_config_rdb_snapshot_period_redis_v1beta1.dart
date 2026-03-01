/// Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
enum PersistenceConfigRdbSnapshotPeriodRedisV1beta1 {
  snapshotPeriodUnspecified("SNAPSHOT_PERIOD_UNSPECIFIED"),
  oneHour("ONE_HOUR"),
  sixHours("SIX_HOURS"),
  twelveHours("TWELVE_HOURS"),
  twentyFourHours("TWENTY_FOUR_HOURS");

  const PersistenceConfigRdbSnapshotPeriodRedisV1beta1(this.value);
  final String value;

  static PersistenceConfigRdbSnapshotPeriodRedisV1beta1 fromValue(
    String value,
  ) {
    for (final item in PersistenceConfigRdbSnapshotPeriodRedisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PersistenceConfigRdbSnapshotPeriodRedisV1beta1 value: $value',
    );
  }
}
