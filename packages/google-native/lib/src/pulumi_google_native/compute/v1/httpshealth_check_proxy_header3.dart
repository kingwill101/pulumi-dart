/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPSHealthCheckProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPSHealthCheckProxyHeader3(this.value);
  final String value;

  static HTTPSHealthCheckProxyHeader3 fromValue(String value) {
    for (final item in HTTPSHealthCheckProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckProxyHeader3 value: $value');
  }
}
