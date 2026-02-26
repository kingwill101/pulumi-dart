/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeader2(this.value);
  final String value;

  static RegionTargetTcpProxyProxyHeader2 fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionTargetTcpProxyProxyHeader2 value: $value');
  }
}
