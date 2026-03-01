/// The billing type of the ExpressRoutePort resource.
enum ExpressRoutePortsBillingType {
  valueMeteredData("MeteredData"),
  valueUnlimitedData("UnlimitedData");

  const ExpressRoutePortsBillingType(this.value);
  final String value;

  static ExpressRoutePortsBillingType fromValue(String value) {
    for (final item in ExpressRoutePortsBillingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePortsBillingType value: $value');
  }
}

