/// Rule type.
enum ApplicationGatewayRequestRoutingRuleType {
  valueBasic("Basic"),
  valuePathBasedRouting("PathBasedRouting");

  const ApplicationGatewayRequestRoutingRuleType(this.value);
  final String value;

  static ApplicationGatewayRequestRoutingRuleType fromValue(String value) {
    for (final item in ApplicationGatewayRequestRoutingRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayRequestRoutingRuleType value: $value');
  }
}

