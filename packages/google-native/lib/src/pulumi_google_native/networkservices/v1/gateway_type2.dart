/// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
enum GatewayType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  openMesh("OPEN_MESH"),
  secureWebGateway("SECURE_WEB_GATEWAY");

  const GatewayType2(this.value);
  final String value;

  static GatewayType2 fromValue(String value) {
    for (final item in GatewayType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType2 value: $value');
  }
}
