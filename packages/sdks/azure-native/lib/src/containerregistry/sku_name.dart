import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU name of the container registry. Required for registry creation.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueClassic("Classic"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const SkuName(this.wireValue);
  @override
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
