/// Tier of a service gateway SKU.
enum ServiceGatewaySkuTier {
  valueRegional("Regional");

  const ServiceGatewaySkuTier(this.value);
  final String value;

  static ServiceGatewaySkuTier fromValue(String value) {
    for (final item in ServiceGatewaySkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceGatewaySkuTier value: $value');
  }
}

