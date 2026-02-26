/// cluster_dns indicates which in-cluster DNS provider should be used.
enum DNSConfigClusterDns2 {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  platformDefault("PLATFORM_DEFAULT"),
  cloudDns("CLOUD_DNS"),
  kubeDns("KUBE_DNS");

  const DNSConfigClusterDns2(this.value);
  final String value;

  static DNSConfigClusterDns2 fromValue(String value) {
    for (final item in DNSConfigClusterDns2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDns2 value: $value');
  }
}
