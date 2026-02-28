// ignore_for_file: unused_element, unnecessary_cast

class ClusterDnsConfig {
  /// This will enable Cloud DNS additive VPC scope. Must provide a domain name that is unique within the VPC. For this to work `cluster_dns = "CLOUD_DNS"` and `cluster_dns_scope = "CLUSTER_SCOPE"` must both be set as well.
  final String? additiveVpcScopeDnsDomain;

  /// Which in-cluster DNS provider should be used. `PROVIDER_UNSPECIFIED` (default) or `PLATFORM_DEFAULT` or `CLOUD_DNS` or `KUBE_DNS`.
  final String? clusterDns;

  /// The suffix used for all cluster service records.
  final String? clusterDnsDomain;

  /// The scope of access to cluster DNS records. `DNS_SCOPE_UNSPECIFIED` or `CLUSTER_SCOPE` or `VPC_SCOPE`. If the `cluster_dns` field is set to `CLOUD_DNS`, `DNS_SCOPE_UNSPECIFIED` and empty/null behave like `CLUSTER_SCOPE`.
  final String? clusterDnsScope;

  /// Creates a new [ClusterDnsConfig].
  /// [additiveVpcScopeDnsDomain] This will enable Cloud DNS additive VPC scope. Must provide a domain name that is unique within the VPC. For this to work `cluster_dns = "CLOUD_DNS"` and `cluster_dns_scope = "CLUSTER_SCOPE"` must both be set as well.
  /// [clusterDns] Which in-cluster DNS provider should be used. `PROVIDER_UNSPECIFIED` (default) or `PLATFORM_DEFAULT` or `CLOUD_DNS` or `KUBE_DNS`.
  /// [clusterDnsDomain] The suffix used for all cluster service records.
  /// [clusterDnsScope] The scope of access to cluster DNS records. `DNS_SCOPE_UNSPECIFIED` or `CLUSTER_SCOPE` or `VPC_SCOPE`. If the `cluster_dns` field is set to `CLOUD_DNS`, `DNS_SCOPE_UNSPECIFIED` and empty/null behave like `CLUSTER_SCOPE`.
  ClusterDnsConfig({
    this.additiveVpcScopeDnsDomain,
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additiveVpcScopeDnsDomainValue = additiveVpcScopeDnsDomain;
    if (additiveVpcScopeDnsDomainValue != null) {
      map['additiveVpcScopeDnsDomain'] = additiveVpcScopeDnsDomainValue;
    }
    final clusterDnsValue = clusterDns;
    if (clusterDnsValue != null) {
      map['clusterDns'] = clusterDnsValue;
    }
    final clusterDnsDomainValue = clusterDnsDomain;
    if (clusterDnsDomainValue != null) {
      map['clusterDnsDomain'] = clusterDnsDomainValue;
    }
    final clusterDnsScopeValue = clusterDnsScope;
    if (clusterDnsScopeValue != null) {
      map['clusterDnsScope'] = clusterDnsScopeValue;
    }
    return map;
  }

  factory ClusterDnsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDnsConfig(
      additiveVpcScopeDnsDomain: map['additiveVpcScopeDnsDomain'] == null
          ? null
          : map['additiveVpcScopeDnsDomain'] as String,
      clusterDns:
          map['clusterDns'] == null ? null : map['clusterDns'] as String,
      clusterDnsDomain: map['clusterDnsDomain'] == null
          ? null
          : map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] == null
          ? null
          : map['clusterDnsScope'] as String,
    );
  }
}
