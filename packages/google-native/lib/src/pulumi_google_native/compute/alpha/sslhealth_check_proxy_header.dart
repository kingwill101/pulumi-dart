/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum SSLHealthCheckProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const SSLHealthCheckProxyHeader(this.value);
  final String value;

  static SSLHealthCheckProxyHeader fromValue(String value) {
    for (final item in SSLHealthCheckProxyHeader.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLHealthCheckProxyHeader value: $value');
  }
}
