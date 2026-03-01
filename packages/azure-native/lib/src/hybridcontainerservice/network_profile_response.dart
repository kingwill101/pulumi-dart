// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_profile_response.dart';

/// NetworkProfile - Profile of network configuration.
class NetworkProfileResponse {
  /// DNSServiceIP - An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final String? dnsServiceIP;
  /// LoadBalancerProfile - Profile of the cluster load balancer.
  final LoadBalancerProfileResponse? loadBalancerProfile;
  /// LoadBalancerSku - The load balancer sku for the provisioned cluster. Possible values: 'unstacked-haproxy', 'stacked-kube-vip', 'stacked-metallb', 'unmanaged'. The default is 'unmanaged'.
  final String? loadBalancerSku;
  /// NetworkPolicy - Network policy used for building Kubernetes network. Possible values include: 'calico', 'flannel'. Default is 'calico'
  final String? networkPolicy;
  /// PodCidr - A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  final String? podCidr;
  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final List<String>? podCidrs;
  /// ServiceCidr - A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final String? serviceCidr;
  /// The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  final List<String>? serviceCidrs;

  /// Creates a new [NetworkProfileResponse].
  /// [dnsServiceIP] DNSServiceIP - An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  /// [loadBalancerProfile] LoadBalancerProfile - Profile of the cluster load balancer.
  /// [loadBalancerSku] LoadBalancerSku - The load balancer sku for the provisioned cluster. Possible values: 'unstacked-haproxy', 'stacked-kube-vip', 'stacked-metallb', 'unmanaged'. The default is 'unmanaged'.
  /// [networkPolicy] NetworkPolicy - Network policy used for building Kubernetes network. Possible values include: 'calico', 'flannel'. Default is 'calico'
  /// [podCidr] PodCidr - A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  /// [podCidrs] The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  /// [serviceCidr] ServiceCidr - A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  /// [serviceCidrs] The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  NetworkProfileResponse({
    this.dnsServiceIP,
    this.loadBalancerProfile,
    this.loadBalancerSku,
    this.networkPolicy,
    this.podCidr,
    this.podCidrs,
    this.serviceCidr,
    this.serviceCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServiceIP': ?dnsServiceIP,
      'loadBalancerProfile': ?loadBalancerProfile == null ? null : loadBalancerProfile!.toMap(),
      'loadBalancerSku': ?loadBalancerSku,
      'networkPolicy': ?networkPolicy,
      'podCidr': ?podCidr,
      'podCidrs': ?podCidrs,
      'serviceCidr': ?serviceCidr,
      'serviceCidrs': ?serviceCidrs,
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      dnsServiceIP: map['dnsServiceIP'] == null ? null : map['dnsServiceIP'] as String,
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : LoadBalancerProfileResponse.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>()),
      loadBalancerSku: map['loadBalancerSku'] == null ? null : map['loadBalancerSku'] as String,
      networkPolicy: map['networkPolicy'] == null ? null : map['networkPolicy'] as String,
      podCidr: map['podCidr'] == null ? null : map['podCidr'] as String,
      podCidrs: map['podCidrs'] == null ? null : (map['podCidrs'] as List).cast<String>(),
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
      serviceCidrs: map['serviceCidrs'] == null ? null : (map['serviceCidrs'] as List).cast<String>(),
    );
  }
}

