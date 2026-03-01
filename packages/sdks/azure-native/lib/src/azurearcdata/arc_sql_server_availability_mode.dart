/// Property that determines whether a given availability replica can run in synchronous-commit mode
enum ArcSqlServerAvailabilityMode {
  valueSYNCHRONOUSCOMMIT("SYNCHRONOUS_COMMIT"),
  valueASYNCHRONOUSCOMMIT("ASYNCHRONOUS_COMMIT");

  const ArcSqlServerAvailabilityMode(this.value);
  final String value;

  static ArcSqlServerAvailabilityMode fromValue(String value) {
    for (final item in ArcSqlServerAvailabilityMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlServerAvailabilityMode value: $value');
  }
}

