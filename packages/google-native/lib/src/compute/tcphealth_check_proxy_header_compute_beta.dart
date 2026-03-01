/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeaderComputeBeta(this.value);
  final String value;

  static TCPHealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeaderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TCPHealthCheckProxyHeaderComputeBeta value: $value',
    );
  }
}
