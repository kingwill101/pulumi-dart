/// Data Residency Boundary of the resource.
enum DataResidencyBoundary {
  valueWithinGeopair("WithinGeopair"),
  valueWithinRegion("WithinRegion");

  const DataResidencyBoundary(this.value);
  final String value;

  static DataResidencyBoundary fromValue(String value) {
    for (final item in DataResidencyBoundary.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResidencyBoundary value: $value');
  }
}

