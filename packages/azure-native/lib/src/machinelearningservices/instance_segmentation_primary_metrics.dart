/// Primary metric to optimize for this task.
enum InstanceSegmentationPrimaryMetrics {
  valueMeanAveragePrecision("MeanAveragePrecision");

  const InstanceSegmentationPrimaryMetrics(this.value);
  final String value;

  static InstanceSegmentationPrimaryMetrics fromValue(String value) {
    for (final item in InstanceSegmentationPrimaryMetrics.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSegmentationPrimaryMetrics value: $value');
  }
}

