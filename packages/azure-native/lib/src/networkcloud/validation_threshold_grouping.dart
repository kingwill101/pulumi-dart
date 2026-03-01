/// Selection of how the type evaluation is applied to the cluster calculation.
enum ValidationThresholdGrouping {
  valuePerCluster("PerCluster"),
  valuePerRack("PerRack");

  const ValidationThresholdGrouping(this.value);
  final String value;

  static ValidationThresholdGrouping fromValue(String value) {
    for (final item in ValidationThresholdGrouping.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationThresholdGrouping value: $value');
  }
}

