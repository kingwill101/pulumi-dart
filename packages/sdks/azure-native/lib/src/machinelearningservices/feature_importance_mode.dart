import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of operation for computing feature importance.
enum FeatureImportanceMode implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const FeatureImportanceMode(this.wireValue);
  @override
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
