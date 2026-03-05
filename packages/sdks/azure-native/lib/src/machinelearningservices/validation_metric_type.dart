/// Metric computation method to use for validation metrics.
enum ValidationMetricType {
  valueNone("None"),
  valueCoco("Coco"),
  valueVoc("Voc"),
  valueCocoVoc("CocoVoc");

  const ValidationMetricType(this.wireValue);
  final String wireValue;

  static ValidationMetricType fromValue(String value) {
    for (final item in ValidationMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationMetricType value: $value');
  }
}

