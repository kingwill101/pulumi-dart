/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeader3 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeader3(this.value);
  final String value;

  static TargetSslProxyProxyHeader3 fromValue(String value) {
    for (final item in TargetSslProxyProxyHeader3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetSslProxyProxyHeader3 value: $value');
  }
}
