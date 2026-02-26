// ignore_for_file: unused_element, unnecessary_cast

import 'dnsconfig_cluster_dns2.dart';
import 'dnsconfig_cluster_dns_scope2.dart';

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfig2 {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final DNSConfigClusterDns2? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  final String? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final DNSConfigClusterDnsScope2? clusterDnsScope;

  DNSConfig2({
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterDnsValue = clusterDns;
    if (clusterDnsValue != null) {
      map['clusterDns'] = clusterDnsValue.value;
    }
    final clusterDnsDomainValue = clusterDnsDomain;
    if (clusterDnsDomainValue != null) {
      map['clusterDnsDomain'] = clusterDnsDomainValue;
    }
    final clusterDnsScopeValue = clusterDnsScope;
    if (clusterDnsScopeValue != null) {
      map['clusterDnsScope'] = clusterDnsScopeValue.value;
    }
    return map;
  }

  factory DNSConfig2.fromMap(Map<String, dynamic> map) {
    return DNSConfig2(
      clusterDns: map['clusterDns'] == null
          ? null
          : DNSConfigClusterDns2.fromValue(map['clusterDns'] as String),
      clusterDnsDomain: map['clusterDnsDomain'] == null
          ? null
          : map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] == null
          ? null
          : DNSConfigClusterDnsScope2.fromValue(
              map['clusterDnsScope'] as String),
    );
  }
}
