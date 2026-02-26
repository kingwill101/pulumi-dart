/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeader2(this.value);
  final String value;

  static HTTPHealthCheckProxyHeader2 fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckProxyHeader2 value: $value');
  }
}
