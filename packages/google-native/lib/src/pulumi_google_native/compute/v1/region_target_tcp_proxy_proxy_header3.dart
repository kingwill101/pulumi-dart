/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeader3(this.value);
  final String value;

  static RegionTargetTcpProxyProxyHeader3 fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionTargetTcpProxyProxyHeader3 value: $value');
  }
}
