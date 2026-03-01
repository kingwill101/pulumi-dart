/// Family of an application gateway SKU.
enum ApplicationGatewaySkuFamily {
  valueGeneration1("Generation_1"),
  valueGeneration2("Generation_2");

  const ApplicationGatewaySkuFamily(this.value);
  final String value;

  static ApplicationGatewaySkuFamily fromValue(String value) {
    for (final item in ApplicationGatewaySkuFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySkuFamily value: $value');
  }
}

