/// Percentile of the utilization data values to be considered while assessing
/// machines.
enum Percentile {
  percentile50("Percentile50"),
  percentile90("Percentile90"),
  percentile95("Percentile95"),
  percentile99("Percentile99"),
  percentileUnknown("PercentileUnknown");

  const Percentile(this.wireValue);
  final String wireValue;

  static Percentile fromValue(String value) {
    for (final item in Percentile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Percentile value: $value');
  }
}

