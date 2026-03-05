/// The protocol used for the probe.
enum ApplicationGatewayProtocol {
  valueHttp("Http"),
  valueHttps("Https"),
  valueTcp("Tcp"),
  valueTls("Tls");

  const ApplicationGatewayProtocol(this.wireValue);
  final String wireValue;

  static ApplicationGatewayProtocol fromValue(String value) {
    for (final item in ApplicationGatewayProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayProtocol value: $value');
  }
}

