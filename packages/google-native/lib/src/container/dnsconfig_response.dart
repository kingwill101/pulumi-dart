// ignore_for_file: unused_element, unnecessary_cast


/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfigResponse {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final String clusterDns;
  /// cluster_dns_domain is the suffix used for all cluster service records.
  final String clusterDnsDomain;
  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final String clusterDnsScope;

  /// Creates a new [DNSConfigResponse].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  DNSConfigResponse({
    required this.clusterDns,
    required this.clusterDnsDomain,
    required this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDns': clusterDns,
      'clusterDnsDomain': clusterDnsDomain,
      'clusterDnsScope': clusterDnsScope,
    };
  }

  factory DNSConfigResponse.fromMap(Map<String, dynamic> map) {
    return DNSConfigResponse(
      clusterDns: map['clusterDns'] as String,
      clusterDnsDomain: map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] as String,
    );
  }
}

