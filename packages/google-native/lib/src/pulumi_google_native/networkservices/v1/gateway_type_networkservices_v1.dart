/// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
enum GatewayTypeNetworkservicesV1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  openMesh("OPEN_MESH"),
  secureWebGateway("SECURE_WEB_GATEWAY");

  const GatewayTypeNetworkservicesV1(this.value);
  final String value;

  static GatewayTypeNetworkservicesV1 fromValue(String value) {
    for (final item in GatewayTypeNetworkservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayTypeNetworkservicesV1 value: $value');
  }
}
