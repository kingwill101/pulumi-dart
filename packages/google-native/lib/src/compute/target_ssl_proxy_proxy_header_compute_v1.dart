/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeaderComputeV1(this.value);
  final String value;

  static TargetSslProxyProxyHeaderComputeV1 fromValue(String value) {
    for (final item in TargetSslProxyProxyHeaderComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TargetSslProxyProxyHeaderComputeV1 value: $value',
    );
  }
}
