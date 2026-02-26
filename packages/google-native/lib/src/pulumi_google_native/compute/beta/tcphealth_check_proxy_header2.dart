/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeader2(this.value);
  final String value;

  static TCPHealthCheckProxyHeader2 fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TCPHealthCheckProxyHeader2 value: $value');
  }
}
