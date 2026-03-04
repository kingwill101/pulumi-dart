/// Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
/// If 'Off' is selected then no featurization is done.
/// If 'Custom' is selected then user can specify additional inputs to customize how featurization is done.
enum FeaturizationMode {
  valueAuto("Auto"),
  valueCustom("Custom"),
  valueOff("Off");

  const FeaturizationMode(this.wireValue);
  final String wireValue;

  static FeaturizationMode fromValue(String value) {
    for (final item in FeaturizationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeaturizationMode value: $value');
  }
}
