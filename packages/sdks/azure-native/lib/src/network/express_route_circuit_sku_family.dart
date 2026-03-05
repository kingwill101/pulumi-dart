/// The family of the SKU.
enum ExpressRouteCircuitSkuFamily {
  valueUnlimitedData("UnlimitedData"),
  valueMeteredData("MeteredData");

  const ExpressRouteCircuitSkuFamily(this.wireValue);
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

