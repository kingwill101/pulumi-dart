/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeader(this.value);
  final String value;

  static RegionTargetTcpProxyProxyHeader fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeader.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionTargetTcpProxyProxyHeader value: $value');
  }
}
