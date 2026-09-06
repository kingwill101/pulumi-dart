import 'package:pulumi/pulumi.dart' as pulumi;

/// The family of the SKU.
enum ExpressRouteCircuitSkuFamily implements pulumi.PulumiEnum<String> {
  valueUnlimitedData("UnlimitedData"),
  valueMeteredData("MeteredData");

  const ExpressRouteCircuitSkuFamily(this.wireValue);
  @override
  final String wireValue;

  static ExpressRouteCircuitSkuFamily fromValue(String value) {
    for (final item in ExpressRouteCircuitSkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteCircuitSkuFamily value: $value');
  }
}
