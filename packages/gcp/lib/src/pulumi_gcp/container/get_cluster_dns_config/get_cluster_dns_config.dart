// ignore_for_file: unused_element, unnecessary_cast

class GetClusterDnsConfig {
  /// Enable additive VPC scope DNS in a GKE cluster.
  final String additiveVpcScopeDnsDomain;

  /// Which in-cluster DNS provider should be used.
  final String clusterDns;

  /// The suffix used for all cluster service records.
  final String clusterDnsDomain;

  /// The scope of access to cluster DNS records.
  final String clusterDnsScope;

  GetClusterDnsConfig({
    required this.additiveVpcScopeDnsDomain,
    required this.clusterDns,
    required this.clusterDnsDomain,
    required this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additiveVpcScopeDnsDomain'] = additiveVpcScopeDnsDomain;
    map['clusterDns'] = clusterDns;
    map['clusterDnsDomain'] = clusterDnsDomain;
    map['clusterDnsScope'] = clusterDnsScope;
    return map;
  }

  factory GetClusterDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterDnsConfig(
      additiveVpcScopeDnsDomain: map['additiveVpcScopeDnsDomain'] as String,
      clusterDns: map['clusterDns'] as String,
      clusterDnsDomain: map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] as String,
    );
  }
}
