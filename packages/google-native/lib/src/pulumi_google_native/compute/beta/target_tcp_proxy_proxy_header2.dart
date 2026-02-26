/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeader2(this.value);
  final String value;

  static TargetTcpProxyProxyHeader2 fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetTcpProxyProxyHeader2 value: $value');
  }
}
