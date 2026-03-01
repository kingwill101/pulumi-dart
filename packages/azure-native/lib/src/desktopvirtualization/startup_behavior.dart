/// The desired startup behavior during the ramp up period for personal vms in the hostpool.
enum StartupBehavior {
  valueNone("None"),
  valueWithAssignedUser("WithAssignedUser"),
  valueAll("All");

  const StartupBehavior(this.value);
  final String value;

  static StartupBehavior fromValue(String value) {
    for (final item in StartupBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StartupBehavior value: $value');
  }
}

