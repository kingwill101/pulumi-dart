import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
enum FeatureSet implements pulumi.PulumiEnum<String> {
  aLL("ALL"),
  cONSOLIDATEDBILLING("CONSOLIDATED_BILLING");

  const FeatureSet(this.wireValue);
  @override
  final String wireValue;

  static FeatureSet fromValue(String value) {
    for (final item in FeatureSet.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureSet value: $value');
  }
}
