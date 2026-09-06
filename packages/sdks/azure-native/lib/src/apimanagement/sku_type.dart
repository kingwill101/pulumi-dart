import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the Sku.
enum SkuType implements pulumi.PulumiEnum<String> {
  valueDeveloper("Developer"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic"),
  valueConsumption("Consumption"),
  valueIsolated("Isolated"),
  valueBasicV2("BasicV2"),
  valueStandardV2("StandardV2");

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
