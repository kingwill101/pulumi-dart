/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum SSLHealthCheckProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const SSLHealthCheckProxyHeader2(this.value);
  final String value;

  static SSLHealthCheckProxyHeader2 fromValue(String value) {
    for (final item in SSLHealthCheckProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLHealthCheckProxyHeader2 value: $value');
  }
}
