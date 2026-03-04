// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_profile_response.dart';

/// NetworkProfile - Profile of network configuration.
class NetworkProfileResponse {
  /// DNSServiceIP - An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final pulumi.Input<String>? dnsServiceIP;

  /// LoadBalancerProfile - Profile of the cluster load balancer.
  final pulumi.Input<LoadBalancerProfileResponse>? loadBalancerProfile;

  /// LoadBalancerSku - The load balancer sku for the provisioned cluster. Possible values: 'unstacked-haproxy', 'stacked-kube-vip', 'stacked-metallb', 'unmanaged'. The default is 'unmanaged'.
  final pulumi.Input<String>? loadBalancerSku;

  /// NetworkPolicy - Network policy used for building Kubernetes network. Possible values include: 'calico', 'flannel'. Default is 'calico'
  final pulumi.Input<String>? networkPolicy;

  /// PodCidr - A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  final pulumi.Input<String>? podCidr;

  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final pulumi.Input<List<String>>? podCidrs;

  /// ServiceCidr - A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final pulumi.Input<String>? serviceCidr;

  /// The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  final pulumi.Input<List<String>>? serviceCidrs;

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
      'loadBalancerProfile':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerProfileResponse,
            Map<String, dynamic>
          >(loadBalancerProfile, (value) => value.toMap()),
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
      dnsServiceIP: (() {
        final guardedValue = map['dnsServiceIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerProfile: (() {
        final guardedValue = map['loadBalancerProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loadBalancerSku: (() {
        final guardedValue = map['loadBalancerSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkPolicy: (() {
        final guardedValue = map['networkPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podCidr: (() {
        final guardedValue = map['podCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podCidrs: (() {
        final guardedValue = map['podCidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceCidr: (() {
        final guardedValue = map['serviceCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceCidrs: (() {
        final guardedValue = map['serviceCidrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
