/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeader2 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeader2(this.value);
  final String value;

  static TargetSslProxyProxyHeader2 fromValue(String value) {
    for (final item in TargetSslProxyProxyHeader2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetSslProxyProxyHeader2 value: $value');
  }
}
