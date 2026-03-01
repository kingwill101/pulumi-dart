/// Property can be used to enable NAT Gateway for this API Management service.
enum NatGatewayState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NatGatewayState(this.value);
  final String value;

  static NatGatewayState fromValue(String value) {
    for (final item in NatGatewayState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewayState value: $value');
  }
}

