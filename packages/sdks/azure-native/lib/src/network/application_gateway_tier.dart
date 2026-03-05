/// Tier of an application gateway.
enum ApplicationGatewayTier {
  valueStandard("Standard"),
  valueWAF("WAF"),
  valueStandardV2("Standard_v2"),
  valueWAFV2("WAF_v2"),
  valueBasic("Basic");

  const ApplicationGatewayTier(this.wireValue);
  final String wireValue;

  static ApplicationGatewayTier fromValue(String value) {
    for (final item in ApplicationGatewayTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayTier value: $value');
  }
}

