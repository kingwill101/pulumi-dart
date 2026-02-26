/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeader(this.value);
  final String value;

  static TargetTcpProxyProxyHeader fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeader.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetTcpProxyProxyHeader value: $value');
  }
}
