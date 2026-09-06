import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag for generating lags for the numeric features.
enum FeatureLags implements pulumi.PulumiEnum<String> {
  none("None"),
  auto("Auto");

  const FeatureLags(this.wireValue);
  @override
  final String wireValue;

  static FeatureLags fromValue(String value) {
    for (final item in FeatureLags.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureLags value: $value');
  }
}
