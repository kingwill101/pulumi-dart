/// Protocol of routed Azure Spring Apps applications.
enum GatewayRouteConfigProtocol {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const GatewayRouteConfigProtocol(this.value);
  final String value;

  static GatewayRouteConfigProtocol fromValue(String value) {
    for (final item in GatewayRouteConfigProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayRouteConfigProtocol value: $value');
  }
}

