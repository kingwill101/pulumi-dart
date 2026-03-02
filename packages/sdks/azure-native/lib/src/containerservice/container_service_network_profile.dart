// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_networking.dart';
import 'managed_cluster_load_balancer_profile.dart';
import 'managed_cluster_natgateway_profile.dart';
import 'managed_cluster_static_egress_gateway_profile.dart';

/// Profile of network configuration.
class ContainerServiceNetworkProfile {
  /// Advanced Networking profile for enabling observability and security feature suite on a cluster. For more information see aka.ms/aksadvancednetworking.
  final pulumi.Input<AdvancedNetworking>? advancedNetworking;
  /// An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final pulumi.Input<String>? dnsServiceIP;
  /// The IP families used to specify IP versions available to the cluster. IP families are used to determine single-stack or dual-stack clusters. For single-stack, the expected value is IPv4. For dual-stack, the expected values are IPv4 and IPv6.
  final pulumi.Input<List<String>>? ipFamilies;
  /// Profile of the cluster load balancer.
  final pulumi.Input<ManagedClusterLoadBalancerProfile>? loadBalancerProfile;
  /// The load balancer sku for the managed cluster. The default is 'standard'. See [Azure Load Balancer SKUs](https://docs.microsoft.com/azure/load-balancer/skus) for more information about the differences between load balancer SKUs.
  final pulumi.Input<String>? loadBalancerSku;
  /// Profile of the cluster NAT gateway.
  final pulumi.Input<ManagedClusterNATGatewayProfile>? natGatewayProfile;
  /// Network dataplane used in the Kubernetes cluster.
  final pulumi.Input<String>? networkDataplane;
  /// The network mode Azure CNI is configured with. This cannot be specified if networkPlugin is anything other than 'azure'.
  final pulumi.Input<String>? networkMode;
  /// Network plugin used for building the Kubernetes network.
  final pulumi.Input<String>? networkPlugin;
  /// The mode the network plugin should use.
  final pulumi.Input<String>? networkPluginMode;
  /// Network policy used for building the Kubernetes network.
  final pulumi.Input<String>? networkPolicy;
  /// The outbound (egress) routing method. This can only be set at cluster creation time and cannot be changed later. For more information see [egress outbound type](https://docs.microsoft.com/azure/aks/egress-outboundtype).
  final pulumi.Input<String>? outboundType;
  /// A CIDR notation IP range from which to assign pod IPs when kubenet is used.
  final pulumi.Input<String>? podCidr;
  /// The CIDR notation IP ranges from which to assign pod IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking.
  final pulumi.Input<List<String>>? podCidrs;
  /// A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final pulumi.Input<String>? serviceCidr;
  /// The CIDR notation IP ranges from which to assign service cluster IPs. One IPv4 CIDR is expected for single-stack networking. Two CIDRs, one for each IP family (IPv4/IPv6), is expected for dual-stack networking. They must not overlap with any Subnet IP ranges.
  final pulumi.Input<List<String>>? serviceCidrs;
  /// The profile for Static Egress Gateway addon. For more details about Static Egress Gateway, see https://aka.ms/aks/static-egress-gateway.
  final pulumi.Input<ManagedClusterStaticEgressGatewayProfile>? staticEgressGatewayProfile;

  /// Creates a new [ContainerServiceNetworkProfile].
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
  ContainerServiceNetworkProfile({
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
      'advancedNetworking': ?pulumi.Input.mapOptionalInputValue<AdvancedNetworking, Map<String, dynamic>>(advancedNetworking, (value) => value.toMap()),
      'dnsServiceIP': ?dnsServiceIP,
      'ipFamilies': ?ipFamilies,
      'loadBalancerProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterLoadBalancerProfile, Map<String, dynamic>>(loadBalancerProfile, (value) => value.toMap()),
      'loadBalancerSku': ?loadBalancerSku,
      'natGatewayProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterNATGatewayProfile, Map<String, dynamic>>(natGatewayProfile, (value) => value.toMap()),
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
      'staticEgressGatewayProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStaticEgressGatewayProfile, Map<String, dynamic>>(staticEgressGatewayProfile, (value) => value.toMap()),
    };
  }

  factory ContainerServiceNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ContainerServiceNetworkProfile(
      advancedNetworking: map['advancedNetworking'] == null ? null : (AdvancedNetworking.fromMap((map['advancedNetworking'] as Map).cast<String, dynamic>())).input(),
      dnsServiceIP: map['dnsServiceIP'] == null ? null : (map['dnsServiceIP'] as String).input(),
      ipFamilies: map['ipFamilies'] == null ? null : ((map['ipFamilies'] as List).cast<String>()).input(),
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : (ManagedClusterLoadBalancerProfile.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>())).input(),
      loadBalancerSku: map['loadBalancerSku'] == null ? null : (map['loadBalancerSku'] as String).input(),
      natGatewayProfile: map['natGatewayProfile'] == null ? null : (ManagedClusterNATGatewayProfile.fromMap((map['natGatewayProfile'] as Map).cast<String, dynamic>())).input(),
      networkDataplane: map['networkDataplane'] == null ? null : (map['networkDataplane'] as String).input(),
      networkMode: map['networkMode'] == null ? null : (map['networkMode'] as String).input(),
      networkPlugin: map['networkPlugin'] == null ? null : (map['networkPlugin'] as String).input(),
      networkPluginMode: map['networkPluginMode'] == null ? null : (map['networkPluginMode'] as String).input(),
      networkPolicy: map['networkPolicy'] == null ? null : (map['networkPolicy'] as String).input(),
      outboundType: map['outboundType'] == null ? null : (map['outboundType'] as String).input(),
      podCidr: map['podCidr'] == null ? null : (map['podCidr'] as String).input(),
      podCidrs: map['podCidrs'] == null ? null : ((map['podCidrs'] as List).cast<String>()).input(),
      serviceCidr: map['serviceCidr'] == null ? null : (map['serviceCidr'] as String).input(),
      serviceCidrs: map['serviceCidrs'] == null ? null : ((map['serviceCidrs'] as List).cast<String>()).input(),
      staticEgressGatewayProfile: map['staticEgressGatewayProfile'] == null ? null : (ManagedClusterStaticEgressGatewayProfile.fromMap((map['staticEgressGatewayProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

