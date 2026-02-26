/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPSHealthCheckProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPSHealthCheckProxyHeader2(this.value);
  final String value;

  static HTTPSHealthCheckProxyHeader2 fromValue(String value) {
    for (final item in HTTPSHealthCheckProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckProxyHeader2 value: $value');
  }
}
