/// Primary metric to optimize for this task.
enum InstanceSegmentationPrimaryMetrics {
  valueMeanAveragePrecision("MeanAveragePrecision");

  const InstanceSegmentationPrimaryMetrics(this.wireValue);
  final String wireValue;

  static InstanceSegmentationPrimaryMetrics fromValue(String value) {
    for (final item in InstanceSegmentationPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSegmentationPrimaryMetrics value: $value');
  }
}

