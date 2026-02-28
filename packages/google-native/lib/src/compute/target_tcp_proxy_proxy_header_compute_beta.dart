/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeaderComputeBeta(this.value);
  final String value;

  static TargetTcpProxyProxyHeaderComputeBeta fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeaderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TargetTcpProxyProxyHeaderComputeBeta value: $value');
  }
}
