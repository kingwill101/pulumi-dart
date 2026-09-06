import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure data catalog SKU.
enum SkuType implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueStandard("Standard");

  const SkuType(this.wireValue);
  @override
  final String wireValue;

  static SkuType fromValue(String value) {
    for (final item in SkuType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuType value: $value');
  }
}
