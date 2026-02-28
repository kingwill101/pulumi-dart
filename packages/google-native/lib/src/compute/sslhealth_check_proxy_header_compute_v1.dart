/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum SSLHealthCheckProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const SSLHealthCheckProxyHeaderComputeV1(this.value);
  final String value;

  static SSLHealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in SSLHealthCheckProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SSLHealthCheckProxyHeaderComputeV1 value: $value');
  }
}
