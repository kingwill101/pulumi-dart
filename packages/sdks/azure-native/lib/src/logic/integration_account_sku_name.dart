import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku name.
enum IntegrationAccountSkuName implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard");

  const IntegrationAccountSkuName(this.wireValue);
  @override
  final String wireValue;

  static IntegrationAccountSkuName fromValue(String value) {
    for (final item in IntegrationAccountSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationAccountSkuName value: $value');
  }
}
