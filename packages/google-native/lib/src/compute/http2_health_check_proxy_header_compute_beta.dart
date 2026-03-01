/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTP2HealthCheckProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTP2HealthCheckProxyHeaderComputeBeta(this.value);
  final String value;

  static HTTP2HealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in HTTP2HealthCheckProxyHeaderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HTTP2HealthCheckProxyHeaderComputeBeta value: $value',
    );
  }
}
