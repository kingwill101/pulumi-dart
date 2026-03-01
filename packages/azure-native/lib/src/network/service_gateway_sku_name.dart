/// Name of a service gateway SKU.
enum ServiceGatewaySkuName {
  valueStandard("Standard");

  const ServiceGatewaySkuName(this.value);
  final String value;

  static ServiceGatewaySkuName fromValue(String value) {
    for (final item in ServiceGatewaySkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceGatewaySkuName value: $value');
  }
}

