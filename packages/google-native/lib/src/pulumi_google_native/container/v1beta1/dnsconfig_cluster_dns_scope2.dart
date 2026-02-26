/// cluster_dns_scope indicates the scope of access to cluster DNS records.
enum DNSConfigClusterDnsScope2 {
  dnsScopeUnspecified("DNS_SCOPE_UNSPECIFIED"),
  clusterScope("CLUSTER_SCOPE"),
  vpcScope("VPC_SCOPE");

  const DNSConfigClusterDnsScope2(this.value);
  final String value;

  static DNSConfigClusterDnsScope2 fromValue(String value) {
    for (final item in DNSConfigClusterDnsScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDnsScope2 value: $value');
  }
}
