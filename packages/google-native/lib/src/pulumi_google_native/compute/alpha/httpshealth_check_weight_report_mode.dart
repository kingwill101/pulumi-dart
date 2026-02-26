/// Weight report mode. used for weighted Load Balancing.
enum HTTPSHealthCheckWeightReportMode {
  disable("DISABLE"),
  dryRun("DRY_RUN"),
  enable("ENABLE");

  const HTTPSHealthCheckWeightReportMode(this.value);
  final String value;

  static HTTPSHealthCheckWeightReportMode fromValue(String value) {
    for (final item in HTTPSHealthCheckWeightReportMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HTTPSHealthCheckWeightReportMode value: $value');
  }
}
