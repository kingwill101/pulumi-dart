/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPSHealthCheckProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPSHealthCheckProxyHeader(this.value);
  final String value;

  static HTTPSHealthCheckProxyHeader fromValue(String value) {
    for (final item in HTTPSHealthCheckProxyHeader.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckProxyHeader value: $value');
  }
}
