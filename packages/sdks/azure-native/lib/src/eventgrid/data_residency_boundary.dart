/// Data Residency Boundary of the resource.
enum DataResidencyBoundary {
  valueWithinGeopair("WithinGeopair"),
  valueWithinRegion("WithinRegion");

  const DataResidencyBoundary(this.wireValue);
  final String wireValue;

  static DataResidencyBoundary fromValue(String value) {
    for (final item in DataResidencyBoundary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResidencyBoundary value: $value');
  }
}

