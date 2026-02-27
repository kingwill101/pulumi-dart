// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_kubernetes_network_config_elastic_load_balancing/get_cluster_kubernetes_network_config_elastic_load_balancing.dart';

class GetClusterKubernetesNetworkConfig {
  /// Contains Elastic Load Balancing configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterKubernetesNetworkConfigElasticLoadBalancing>
      elasticLoadBalancings;

  /// `ipv4` or `ipv6`.
  final String ipFamily;

  /// The CIDR block to assign Kubernetes pod and service IP addresses from if `ipv4` was specified when the cluster was created.
  final String serviceIpv4Cidr;

  /// The CIDR block to assign Kubernetes pod and service IP addresses from if `ipv6` was specified when the cluster was created. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
  final String serviceIpv6Cidr;

  GetClusterKubernetesNetworkConfig({
    required this.elasticLoadBalancings,
    required this.ipFamily,
    required this.serviceIpv4Cidr,
    required this.serviceIpv6Cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elasticLoadBalancings'] = Input.encodeList<
        GetClusterKubernetesNetworkConfigElasticLoadBalancing,
        Map<String, dynamic>>(elasticLoadBalancings, (value) => value.toMap());
    map['ipFamily'] = ipFamily;
    map['serviceIpv4Cidr'] = serviceIpv4Cidr;
    map['serviceIpv6Cidr'] = serviceIpv6Cidr;
    return map;
  }

  factory GetClusterKubernetesNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubernetesNetworkConfig(
      elasticLoadBalancings: Input.decodeList<
              GetClusterKubernetesNetworkConfigElasticLoadBalancing>(
          map['elasticLoadBalancings'],
          (value) =>
              GetClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipFamily: map['ipFamily'] as String,
      serviceIpv4Cidr: map['serviceIpv4Cidr'] as String,
      serviceIpv6Cidr: map['serviceIpv6Cidr'] as String,
    );
  }
}
