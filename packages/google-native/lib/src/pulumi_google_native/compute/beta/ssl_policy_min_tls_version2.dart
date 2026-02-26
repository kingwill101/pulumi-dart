/// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
enum SslPolicyMinTlsVersion2 {
  tls10("TLS_1_0"),
  tls11("TLS_1_1"),
  tls12("TLS_1_2");

  const SslPolicyMinTlsVersion2(this.value);
  final String value;

  static SslPolicyMinTlsVersion2 fromValue(String value) {
    for (final item in SslPolicyMinTlsVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPolicyMinTlsVersion2 value: $value');
  }
}
