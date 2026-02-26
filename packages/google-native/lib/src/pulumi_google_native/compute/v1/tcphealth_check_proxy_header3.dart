/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeader3(this.value);
  final String value;

  static TCPHealthCheckProxyHeader3 fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TCPHealthCheckProxyHeader3 value: $value');
  }
}
