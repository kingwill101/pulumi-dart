/// Rule type.
enum ApplicationGatewayRequestRoutingRuleType {
  valueBasic("Basic"),
  valuePathBasedRouting("PathBasedRouting");

  const ApplicationGatewayRequestRoutingRuleType(this.wireValue);
  final String wireValue;

  static ApplicationGatewayRequestRoutingRuleType fromValue(String value) {
    for (final item in ApplicationGatewayRequestRoutingRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayRequestRoutingRuleType value: $value');
  }
}
