/// Primary metrics for InstanceSegmentation tasks.
enum InstanceSegmentationPrimaryMetrics {
  meanAveragePrecision("MeanAveragePrecision");

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
