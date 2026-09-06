import 'package:pulumi/pulumi.dart' as pulumi;

/// Featurization mode - User can keep the default 'Auto' mode and AutoML will take care of necessary transformation of the data in featurization phase.
/// If 'Off' is selected then no featurization is done.
/// If 'Custom' is selected then user can specify additional inputs to customize how featurization is done.
enum FeaturizationMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom"),
  off("Off");

  const FeaturizationMode(this.wireValue);
  @override
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
