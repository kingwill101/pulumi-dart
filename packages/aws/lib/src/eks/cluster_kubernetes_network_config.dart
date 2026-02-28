// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_kubernetes_network_config_elastic_load_balancing.dart';

class ClusterKubernetesNetworkConfig {
  /// Configuration block with elastic load balancing configuration for the cluster. Detailed below.
  final ClusterKubernetesNetworkConfigElasticLoadBalancing?
      elasticLoadBalancing;

  /// The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
  final String? ipFamily;

  /// The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
  ///
  /// * Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16.
  ///
  /// * Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.
  ///
  /// * Between /24 and /12.
  final String? serviceIpv4Cidr;

  /// The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specify `ipv6` for `ip_family` when you create the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
  final String? serviceIpv6Cidr;

  /// Creates a new [ClusterKubernetesNetworkConfig].
  /// [elasticLoadBalancing] Configuration block with elastic load balancing configuration for the cluster. Detailed below.
  /// [ipFamily] The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
  /// [serviceIpv4Cidr] The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
  /// [serviceIpv6Cidr] The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specify `ipv6` for `ip_family` when you create the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
  ClusterKubernetesNetworkConfig({
    this.elasticLoadBalancing,
    this.ipFamily,
    this.serviceIpv4Cidr,
    this.serviceIpv6Cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final elasticLoadBalancingValue = elasticLoadBalancing;
    if (elasticLoadBalancingValue != null) {
      map['elasticLoadBalancing'] = elasticLoadBalancingValue.toMap();
    }
    final ipFamilyValue = ipFamily;
    if (ipFamilyValue != null) {
      map['ipFamily'] = ipFamilyValue;
    }
    final serviceIpv4CidrValue = serviceIpv4Cidr;
    if (serviceIpv4CidrValue != null) {
      map['serviceIpv4Cidr'] = serviceIpv4CidrValue;
    }
    final serviceIpv6CidrValue = serviceIpv6Cidr;
    if (serviceIpv6CidrValue != null) {
      map['serviceIpv6Cidr'] = serviceIpv6CidrValue;
    }
    return map;
  }

  factory ClusterKubernetesNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubernetesNetworkConfig(
      elasticLoadBalancing: map['elasticLoadBalancing'] == null
          ? null
          : ClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(
              (map['elasticLoadBalancing'] as Map).cast<String, dynamic>()),
      ipFamily: map['ipFamily'] == null ? null : map['ipFamily'] as String,
      serviceIpv4Cidr: map['serviceIpv4Cidr'] == null
          ? null
          : map['serviceIpv4Cidr'] as String,
      serviceIpv6Cidr: map['serviceIpv6Cidr'] == null
          ? null
          : map['serviceIpv6Cidr'] as String,
    );
  }
}
