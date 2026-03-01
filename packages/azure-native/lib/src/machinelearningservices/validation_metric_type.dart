/// Metric computation method to use for validation metrics.
enum ValidationMetricType {
  valueNone("None"),
  valueCoco("Coco"),
  valueVoc("Voc"),
  valueCocoVoc("CocoVoc");

  const ValidationMetricType(this.value);
  final String value;

  static ValidationMetricType fromValue(String value) {
    for (final item in ValidationMetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationMetricType value: $value');
  }
}

