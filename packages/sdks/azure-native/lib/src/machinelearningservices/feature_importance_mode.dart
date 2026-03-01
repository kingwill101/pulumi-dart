/// The mode of operation for computing feature importance.
enum FeatureImportanceMode {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const FeatureImportanceMode(this.value);
  final String value;

  static FeatureImportanceMode fromValue(String value) {
    for (final item in FeatureImportanceMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureImportanceMode value: $value');
  }
}

