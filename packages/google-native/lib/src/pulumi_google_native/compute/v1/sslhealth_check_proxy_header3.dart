/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum SSLHealthCheckProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const SSLHealthCheckProxyHeader3(this.value);
  final String value;

  static SSLHealthCheckProxyHeader3 fromValue(String value) {
    for (final item in SSLHealthCheckProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLHealthCheckProxyHeader3 value: $value');
  }
}
