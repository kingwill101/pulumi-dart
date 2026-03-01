// ignore_for_file: unused_element, unnecessary_cast

import 'dnsconfig_cluster_dns.dart';
import 'dnsconfig_cluster_dns_scope.dart';

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfig {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final DNSConfigClusterDns? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  final String? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final DNSConfigClusterDnsScope? clusterDnsScope;

  /// Creates a new [DNSConfig].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  DNSConfig({this.clusterDns, this.clusterDnsDomain, this.clusterDnsScope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDns': ?clusterDns == null ? null : clusterDns!.value,
      'clusterDnsDomain': ?clusterDnsDomain,
      'clusterDnsScope': ?clusterDnsScope == null
          ? null
          : clusterDnsScope!.value,
    };
  }

  factory DNSConfig.fromMap(Map<String, dynamic> map) {
    return DNSConfig(
      clusterDns: map['clusterDns'] == null
          ? null
          : DNSConfigClusterDns.fromValue(map['clusterDns'] as String),
      clusterDnsDomain: map['clusterDnsDomain'] == null
          ? null
          : map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] == null
          ? null
          : DNSConfigClusterDnsScope.fromValue(
              map['clusterDnsScope'] as String,
            ),
    );
  }
}
