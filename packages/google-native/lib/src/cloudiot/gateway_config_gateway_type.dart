/// Indicates whether the device is a gateway.
enum GatewayConfigGatewayType {
  gatewayTypeUnspecified("GATEWAY_TYPE_UNSPECIFIED"),
  gateway("GATEWAY"),
  nonGateway("NON_GATEWAY");

  const GatewayConfigGatewayType(this.value);
  final String value;

  static GatewayConfigGatewayType fromValue(String value) {
    for (final item in GatewayConfigGatewayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayConfigGatewayType value: $value');
  }
}
