/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeader3(this.value);
  final String value;

  static TargetTcpProxyProxyHeader3 fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetTcpProxyProxyHeader3 value: $value');
  }
}
