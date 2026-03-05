/// Protocol of routed Azure Spring Apps applications.
enum GatewayRouteConfigProtocol {
  valueHTTP("HTTP"),
  valueHTTPS("HTTPS");

  const GatewayRouteConfigProtocol(this.wireValue);
  final String wireValue;

  static GatewayRouteConfigProtocol fromValue(String value) {
    for (final item in GatewayRouteConfigProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayRouteConfigProtocol value: $value');
  }
}

