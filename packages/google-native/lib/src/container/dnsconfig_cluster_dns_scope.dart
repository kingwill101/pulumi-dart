/// cluster_dns_scope indicates the scope of access to cluster DNS records.
enum DNSConfigClusterDnsScope {
  dnsScopeUnspecified("DNS_SCOPE_UNSPECIFIED"),
  clusterScope("CLUSTER_SCOPE"),
  vpcScope("VPC_SCOPE");

  const DNSConfigClusterDnsScope(this.value);
  final String value;

  static DNSConfigClusterDnsScope fromValue(String value) {
    for (final item in DNSConfigClusterDnsScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDnsScope value: $value');
  }
}
