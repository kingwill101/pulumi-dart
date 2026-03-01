/// Percentile of the utilization data values to be considered while assessing
/// machines.
enum Percentile {
  percentile50("Percentile50"),
  percentile90("Percentile90"),
  percentile95("Percentile95"),
  percentile99("Percentile99"),
  percentileUnknown("PercentileUnknown");

  const Percentile(this.value);
  final String value;

  static Percentile fromValue(String value) {
    for (final item in Percentile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Percentile value: $value');
  }
}

