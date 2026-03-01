/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeaderComputeBeta(this.value);
  final String value;

  static RegionTargetTcpProxyProxyHeaderComputeBeta fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeaderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionTargetTcpProxyProxyHeaderComputeBeta value: $value',
    );
  }
}
