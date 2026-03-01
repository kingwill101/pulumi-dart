/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeaderComputeV1(this.value);
  final String value;

  static TargetTcpProxyProxyHeaderComputeV1 fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TargetTcpProxyProxyHeaderComputeV1 value: $value',
    );
  }
}
