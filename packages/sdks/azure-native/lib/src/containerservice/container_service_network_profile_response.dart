// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_networking_response.dart';
import 'managed_cluster_load_balancer_profile_response.dart';
import 'managed_cluster_natgateway_profile_response.dart';
import 'managed_cluster_static_egress_gateway_profile_response.dart';

/// Profile of network configuration.
class ContainerServiceNetworkProfileResponse {
  /// Advanced Networking profile for enabling observability and security feature suite on a cluster. For more information see aka.ms/aksadvancednetworking.
  final AdvancedNetworkingResponse? advancedNetworking;
  /// An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final String? dnsServiceIP;
  /// The IP families used to specify IP versions available to the cluster. IP families are used to determine single-stack or dual-stack clusters. For single-stack, the expected value is IPv4. For dual-stack, the expected values are IPv4 and IPv6.
  final List<String>? ipFamilies;
  /// Profile of the cluster load balancer.
  final ManagedClusterLoadBalancerProfileResponse? loadBalancerProfile;
  /// The load balancer sku for the managed cluster. The default is 'standard'. See [Azure Load Balancer SKUs](https://docs.microsoft.com/azure/load-balancer/skus) for more information about the differences between load balancer SKUs.
  final String? loadBalancerSku;
  /// Profile of the cluster NAT gateway.
  final ManagedClusterNATGatewayProfileResponse? natGatewayProfile;
  /// Network dataplane used in the Kubernetes cluster.
  final String? networkDataplane;
  /// The network mode Azure CNI is configured with. This cannot be specified if networkPlugin is anything other than 'azure'.
  final String? networkMode;
  /// Network plugin used for building the Kubernetes network.
  final String? networkPlugin;
  /// The mode the network plugin should use.
  final String? networkPluginMode;
  /// Network policy used for building the Kubernetes network.
  final String? networkPolicy;
  /// The outbound (egress) routing method. This can only be set at cluster creation time and cannot be changed later. For more information see [egress outbound type](https://docs.microsoft.com/azure/aks/egress-outboundtype).
  final String? outboundType;
  /// A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  final String? podCidr;
  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final List<String>? podCidrs;
  /// A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final String? serviceCidr;
  /// The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  final List<String>? serviceCidrs;
  /// The profile for Static Egress Gateway addon. For more details about Static Egress Gateway, see https://aka.ms/aks/static-egress-gateway.
  final ManagedClusterStaticEgressGatewayProfileResponse? staticEgressGatewayProfile;

  /// Creates a new [ContainerServiceNetworkProfileResponse].
  /// [advancedNetworking] Advanced Networking profile for enabling observability and security feature suite on a cluster. For more information see aka.ms/aksadvancednetworking.
  /// [dnsServiceIP] An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  /// [ipFamilies] The IP families used to specify IP versions available to the cluster. IP families are used to determine single-stack or dual-stack clusters. For single-stack, the expected value is IPv4. For dual-stack, the expected values are IPv4 and IPv6.
  /// [loadBalancerProfile] Profile of the cluster load balancer.
  /// [loadBalancerSku] The load balancer sku for the managed cluster. The default is 'standard'. See [Azure Load Balancer SKUs](https://docs.microsoft.com/azure/load-balancer/skus) for more information about the differences between load balancer SKUs.
  /// [natGatewayProfile] Profile of the cluster NAT gateway.
  /// [networkDataplane] Network dataplane used in the Kubernetes cluster.
  /// [networkMode] The network mode Azure CNI is configured with. This cannot be specified if networkPlugin is anything other than 'azure'.
  /// [networkPlugin] Network plugin used for building the Kubernetes network.
  /// [networkPluginMode] The mode the network plugin should use.
  /// [networkPolicy] Network policy used for building the Kubernetes network.
  /// [outboundType] The outbound (egress) routing method. This can only be set at cluster creation time and cannot be changed later. For more information see [egress outbound type](https://docs.microsoft.com/azure/aks/egress-outboundtype).
  /// [podCidr] A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  /// [podCidrs] The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  /// [serviceCidr] A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  /// [serviceCidrs] The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  /// [staticEgressGatewayProfile] The profile for Static Egress Gateway addon. For more details about Static Egress Gateway, see https://aka.ms/aks/static-egress-gateway.
  ContainerServiceNetworkProfileResponse({
    this.advancedNetworking,
    this.dnsServiceIP,
    this.ipFamilies,
    this.loadBalancerProfile,
    this.loadBalancerSku,
    this.natGatewayProfile,
    this.networkDataplane,
    this.networkMode,
    this.networkPlugin,
    this.networkPluginMode,
    this.networkPolicy,
    this.outboundType,
    this.podCidr,
    this.podCidrs,
    this.serviceCidr,
    this.serviceCidrs,
    this.staticEgressGatewayProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking == null ? null : advancedNetworking!.toMap(),
      'dnsServiceIP': ?dnsServiceIP,
      'ipFamilies': ?ipFamilies,
      'loadBalancerProfile': ?loadBalancerProfile == null ? null : loadBalancerProfile!.toMap(),
      'loadBalancerSku': ?loadBalancerSku,
      'natGatewayProfile': ?natGatewayProfile == null ? null : natGatewayProfile!.toMap(),
      'networkDataplane': ?networkDataplane,
      'networkMode': ?networkMode,
      'networkPlugin': ?networkPlugin,
      'networkPluginMode': ?networkPluginMode,
      'networkPolicy': ?networkPolicy,
      'outboundType': ?outboundType,
      'podCidr': ?podCidr,
      'podCidrs': ?podCidrs,
      'serviceCidr': ?serviceCidr,
      'serviceCidrs': ?serviceCidrs,
      'staticEgressGatewayProfile': ?staticEgressGatewayProfile == null ? null : staticEgressGatewayProfile!.toMap(),
    };
  }

  factory ContainerServiceNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return ContainerServiceNetworkProfileResponse(
      advancedNetworking: map['advancedNetworking'] == null ? null : AdvancedNetworkingResponse.fromMap((map['advancedNetworking'] as Map).cast<String, dynamic>()),
      dnsServiceIP: map['dnsServiceIP'] == null ? null : map['dnsServiceIP'] as String,
      ipFamilies: map['ipFamilies'] == null ? null : (map['ipFamilies'] as List).cast<String>(),
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : ManagedClusterLoadBalancerProfileResponse.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>()),
      loadBalancerSku: map['loadBalancerSku'] == null ? null : map['loadBalancerSku'] as String,
      natGatewayProfile: map['natGatewayProfile'] == null ? null : ManagedClusterNATGatewayProfileResponse.fromMap((map['natGatewayProfile'] as Map).cast<String, dynamic>()),
      networkDataplane: map['networkDataplane'] == null ? null : map['networkDataplane'] as String,
      networkMode: map['networkMode'] == null ? null : map['networkMode'] as String,
      networkPlugin: map['networkPlugin'] == null ? null : map['networkPlugin'] as String,
      networkPluginMode: map['networkPluginMode'] == null ? null : map['networkPluginMode'] as String,
      networkPolicy: map['networkPolicy'] == null ? null : map['networkPolicy'] as String,
      outboundType: map['outboundType'] == null ? null : map['outboundType'] as String,
      podCidr: map['podCidr'] == null ? null : map['podCidr'] as String,
      podCidrs: map['podCidrs'] == null ? null : (map['podCidrs'] as List).cast<String>(),
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
      serviceCidrs: map['serviceCidrs'] == null ? null : (map['serviceCidrs'] as List).cast<String>(),
      staticEgressGatewayProfile: map['staticEgressGatewayProfile'] == null ? null : ManagedClusterStaticEgressGatewayProfileResponse.fromMap((map['staticEgressGatewayProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

