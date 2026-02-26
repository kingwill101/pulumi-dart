/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTP2HealthCheckProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTP2HealthCheckProxyHeader3(this.value);
  final String value;

  static HTTP2HealthCheckProxyHeader3 fromValue(String value) {
    for (final item in HTTP2HealthCheckProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTP2HealthCheckProxyHeader3 value: $value');
  }
}
