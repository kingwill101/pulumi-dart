/// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
enum GatewayType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  openMesh("OPEN_MESH"),
  secureWebGateway("SECURE_WEB_GATEWAY");

  const GatewayType3(this.value);
  final String value;

  static GatewayType3 fromValue(String value) {
    for (final item in GatewayType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType3 value: $value');
  }
}
