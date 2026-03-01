/// The family of the SKU.
enum ExpressRouteCircuitSkuFamily {
  valueUnlimitedData("UnlimitedData"),
  valueMeteredData("MeteredData");

  const ExpressRouteCircuitSkuFamily(this.value);
  final String value;

  static ExpressRouteCircuitSkuFamily fromValue(String value) {
    for (final item in ExpressRouteCircuitSkuFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteCircuitSkuFamily value: $value');
  }
}

