/// Specifies the behavior when monthly free limits are exhausted for the free database.
///
/// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
///
/// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
enum FreeLimitExhaustionBehavior {
  valueAutoPause("AutoPause"),
  valueBillOverUsage("BillOverUsage");

  const FreeLimitExhaustionBehavior(this.value);
  final String value;

  static FreeLimitExhaustionBehavior fromValue(String value) {
    for (final item in FreeLimitExhaustionBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeLimitExhaustionBehavior value: $value');
  }
}

