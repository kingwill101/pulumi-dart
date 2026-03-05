/// Primary metric to optimize for this task.
enum ObjectDetectionPrimaryMetrics {
  valueMeanAveragePrecision("MeanAveragePrecision");

  const ObjectDetectionPrimaryMetrics(this.wireValue);
  final String wireValue;

  static ObjectDetectionPrimaryMetrics fromValue(String value) {
    for (final item in ObjectDetectionPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ObjectDetectionPrimaryMetrics value: $value');
  }
}

