import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU for Azure Dev Spaces Controller.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueS1("S1");

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
