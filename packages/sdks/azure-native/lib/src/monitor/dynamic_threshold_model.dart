/// ML model to use for dynamic thresholds
enum DynamicThresholdModel {
  anomalyDetection("AnomalyDetection");

  const DynamicThresholdModel(this.value);
  final String value;

  static DynamicThresholdModel fromValue(String value) {
    for (final item in DynamicThresholdModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdModel value: $value');
  }
}

