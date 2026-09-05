// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kubernetes_network_config_elastic_load_balancing.dart';

class ClusterKubernetesNetworkConfig {
  /// Configuration block with elastic load balancing configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterKubernetesNetworkConfigElasticLoadBalancing?>? elasticLoadBalancing;
  /// The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
  final pulumi.Input<String?>? ipFamily;
  /// The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
  ///
  /// * Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16.
  ///
  /// * Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.
  ///
  /// * Between /24 and /12.
  final pulumi.Input<String?>? serviceIpv4Cidr;
  /// The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specify `ipv6` for `ipFamily` when you create the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
  final pulumi.Input<String?>? serviceIpv6Cidr;

  /// Creates a new [ClusterKubernetesNetworkConfig].
  /// [elasticLoadBalancing] Configuration block with elastic load balancing configuration for the cluster. Detailed below.
  /// [ipFamily] The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
  /// [serviceIpv4Cidr] The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
  /// [serviceIpv6Cidr] The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specify `ipv6` for `ipFamily` when you create the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
  const ClusterKubernetesNetworkConfig({
    this.elasticLoadBalancing,
    this.ipFamily,
    this.serviceIpv4Cidr,
    this.serviceIpv6Cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticLoadBalancing': ?pulumi.Input.mapOptionalInputValue<ClusterKubernetesNetworkConfigElasticLoadBalancing, Map<String, dynamic>>(elasticLoadBalancing, (value) => value.toMap()),
      'ipFamily': ?ipFamily,
      'serviceIpv4Cidr': ?serviceIpv4Cidr,
      'serviceIpv6Cidr': ?serviceIpv6Cidr,
    };
  }

  factory ClusterKubernetesNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubernetesNetworkConfig(
      elasticLoadBalancing: (() { final guardedValue = map['elasticLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipFamily: (() { final guardedValue = map['ipFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIpv4Cidr: (() { final guardedValue = map['serviceIpv4Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIpv6Cidr: (() { final guardedValue = map['serviceIpv6Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
