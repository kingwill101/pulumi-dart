/// Primary metric to optimize for this task.
enum ObjectDetectionPrimaryMetrics {
  valueMeanAveragePrecision("MeanAveragePrecision");

  const ObjectDetectionPrimaryMetrics(this.value);
  final String value;

  static ObjectDetectionPrimaryMetrics fromValue(String value) {
    for (final item in ObjectDetectionPrimaryMetrics.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ObjectDetectionPrimaryMetrics value: $value');
  }
}

