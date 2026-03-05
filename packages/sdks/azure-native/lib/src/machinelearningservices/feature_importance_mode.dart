/// The mode of operation for computing feature importance.
enum FeatureImportanceMode {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const FeatureImportanceMode(this.wireValue);
  final String wireValue;

  static FeatureImportanceMode fromValue(String value) {
    for (final item in FeatureImportanceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureImportanceMode value: $value');
  }
}

