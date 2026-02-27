/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeaderComputeV1(this.value);
  final String value;

  static HTTPHealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HTTPHealthCheckProxyHeaderComputeV1 value: $value');
  }
}
