/// Family of an application gateway SKU.
enum ApplicationGatewaySkuFamily {
  valueGeneration1("Generation_1"),
  valueGeneration2("Generation_2");

  const ApplicationGatewaySkuFamily(this.wireValue);
  final String wireValue;

  static ApplicationGatewaySkuFamily fromValue(String value) {
    for (final item in ApplicationGatewaySkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySkuFamily value: $value');
  }
}

