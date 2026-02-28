/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum RegionTargetTcpProxyProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const RegionTargetTcpProxyProxyHeaderComputeV1(this.value);
  final String value;

  static RegionTargetTcpProxyProxyHeaderComputeV1 fromValue(String value) {
    for (final item in RegionTargetTcpProxyProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionTargetTcpProxyProxyHeaderComputeV1 value: $value');
  }
}
