/// ML model to use for dynamic thresholds
enum DynamicThresholdModel {
  anomalyDetection("AnomalyDetection");

  const DynamicThresholdModel(this.wireValue);
  final String wireValue;

  static DynamicThresholdModel fromValue(String value) {
    for (final item in DynamicThresholdModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdModel value: $value');
  }
}

