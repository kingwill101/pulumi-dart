import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the SKU.
enum ExpressRouteCircuitSkuTier implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic"),
  valueLocal("Local");

  const ExpressRouteCircuitSkuTier(this.wireValue);
  @override
  final String wireValue;

  static ExpressRouteCircuitSkuTier fromValue(String value) {
    for (final item in ExpressRouteCircuitSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteCircuitSkuTier value: $value');
  }
}
