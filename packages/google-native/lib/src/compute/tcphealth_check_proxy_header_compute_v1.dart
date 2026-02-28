/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeaderComputeV1(this.value);
  final String value;

  static TCPHealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TCPHealthCheckProxyHeaderComputeV1 value: $value');
  }
}
