// ignore_for_file: unused_element, unnecessary_cast

import 'additional_pod_ranges_config_response_container_v1beta1.dart';
import 'pod_cidroverprovision_config_response_container_v1beta1.dart';

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicyResponseContainerV1beta1 {
  /// [Output only] The additional pod ranges that are added to the cluster. These pod ranges can be used by new node pools to allocate pod IPs automatically. Once the range is removed it will not show up in IPAllocationPolicy.
  final AdditionalPodRangesConfigResponseContainerV1beta1
  additionalPodRangesConfig;

  /// If true, allow allocation of cluster CIDR ranges that overlap with certain kinds of network routes. By default we do not allow cluster CIDR ranges to intersect with any user declared routes. With allow_route_overlap == true, we allow overlapping with CIDR ranges that are larger than the cluster CIDR range. If this field is set to true, then cluster and services CIDRs must be fully-specified (e.g. `10.96.0.0/14`, but not `/14`), which means: 1) When `use_ip_aliases` is true, `cluster_ipv4_cidr_block` and `services_ipv4_cidr_block` must be fully-specified. 2) When `use_ip_aliases` is false, `cluster.cluster_ipv4_cidr` muse be fully-specified.
  final bool allowRouteOverlap;

  /// This field is deprecated, use cluster_ipv4_cidr_block.
  final String clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  final String clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  final bool createSubnetwork;

  /// [Output only] The utilization of the cluster default IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  final double defaultPodIpv4RangeUtilization;

  /// The ipv6 access type (internal or external) when create_subnetwork is true
  final String ipv6AccessType;

  /// This field is deprecated, use node_ipv4_cidr_block.
  final String nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String nodeIpv4CidrBlock;

  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final PodCIDROverprovisionConfigResponseContainerV1beta1
  podCidrOverprovisionConfig;

  /// This field is deprecated, use services_ipv4_cidr_block.
  final String servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String servicesIpv4CidrBlock;

  /// [Output only] The services IPv6 CIDR block for the cluster.
  final String servicesIpv6CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  final String servicesSecondaryRangeName;

  /// IP stack type
  final String stackType;

  /// [Output only] The subnet's IPv6 CIDR block used by nodes and pods.
  final String subnetIpv6CidrBlock;

  /// A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  final String subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. This field is deprecated, use cluster.tpu_config.ipv4_cidr_block instead.
  final String tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final bool useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final bool useRoutes;

  /// Creates a new [IPAllocationPolicyResponseContainerV1beta1].
  /// [additionalPodRangesConfig] [Output only] The additional pod ranges that are added to the cluster. These pod ranges can be used by new node pools to allocate pod IPs automatically. Once the range is removed it will not show up in IPAllocationPolicy.
  /// [allowRouteOverlap] If true, allow allocation of cluster CIDR ranges that overlap with certain kinds of network routes. By default we do not allow cluster CIDR ranges to intersect with any user declared routes. With allow_route_overlap == true, we allow overlapping with CIDR ranges that are larger than the cluster CIDR range. If this field is set to true, then cluster and services CIDRs must be fully-specified (e.g. `10.96.0.0/14`, but not `/14`), which means: 1) When `use_ip_aliases` is true, `cluster_ipv4_cidr_block` and `services_ipv4_cidr_block` must be fully-specified. 2) When `use_ip_aliases` is false, `cluster.cluster_ipv4_cidr` muse be fully-specified.
  /// [clusterIpv4Cidr] This field is deprecated, use cluster_ipv4_cidr_block.
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [clusterSecondaryRangeName] The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  /// [createSubnetwork] Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  /// [defaultPodIpv4RangeUtilization] [Output only] The utilization of the cluster default IPv4 range for the pod. The ratio is Usage/[Total number of IPs in the secondary range], Usage=numNodes*numZones*podIPsPerNode.
  /// [ipv6AccessType] The ipv6 access type (internal or external) when create_subnetwork is true
  /// [nodeIpv4Cidr] This field is deprecated, use node_ipv4_cidr_block.
  /// [nodeIpv4CidrBlock] The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [servicesIpv4Cidr] This field is deprecated, use services_ipv4_cidr_block.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [servicesIpv6CidrBlock] [Output only] The services IPv6 CIDR block for the cluster.
  /// [servicesSecondaryRangeName] The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  /// [stackType] IP stack type
  /// [subnetIpv6CidrBlock] [Output only] The subnet's IPv6 CIDR block used by nodes and pods.
  /// [subnetworkName] A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  /// [tpuIpv4CidrBlock] The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. This field is deprecated, use cluster.tpu_config.ipv4_cidr_block instead.
  /// [useIpAliases] Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  /// [useRoutes] Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  IPAllocationPolicyResponseContainerV1beta1({
    required this.additionalPodRangesConfig,
    required this.allowRouteOverlap,
    required this.clusterIpv4Cidr,
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.createSubnetwork,
    required this.defaultPodIpv4RangeUtilization,
    required this.ipv6AccessType,
    required this.nodeIpv4Cidr,
    required this.nodeIpv4CidrBlock,
    required this.podCidrOverprovisionConfig,
    required this.servicesIpv4Cidr,
    required this.servicesIpv4CidrBlock,
    required this.servicesIpv6CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.stackType,
    required this.subnetIpv6CidrBlock,
    required this.subnetworkName,
    required this.tpuIpv4CidrBlock,
    required this.useIpAliases,
    required this.useRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPodRangesConfig': additionalPodRangesConfig.toMap(),
      'allowRouteOverlap': allowRouteOverlap,
      'clusterIpv4Cidr': clusterIpv4Cidr,
      'clusterIpv4CidrBlock': clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': clusterSecondaryRangeName,
      'createSubnetwork': createSubnetwork,
      'defaultPodIpv4RangeUtilization': defaultPodIpv4RangeUtilization,
      'ipv6AccessType': ipv6AccessType,
      'nodeIpv4Cidr': nodeIpv4Cidr,
      'nodeIpv4CidrBlock': nodeIpv4CidrBlock,
      'podCidrOverprovisionConfig': podCidrOverprovisionConfig.toMap(),
      'servicesIpv4Cidr': servicesIpv4Cidr,
      'servicesIpv4CidrBlock': servicesIpv4CidrBlock,
      'servicesIpv6CidrBlock': servicesIpv6CidrBlock,
      'servicesSecondaryRangeName': servicesSecondaryRangeName,
      'stackType': stackType,
      'subnetIpv6CidrBlock': subnetIpv6CidrBlock,
      'subnetworkName': subnetworkName,
      'tpuIpv4CidrBlock': tpuIpv4CidrBlock,
      'useIpAliases': useIpAliases,
      'useRoutes': useRoutes,
    };
  }

  factory IPAllocationPolicyResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return IPAllocationPolicyResponseContainerV1beta1(
      additionalPodRangesConfig:
          AdditionalPodRangesConfigResponseContainerV1beta1.fromMap(
            (map['additionalPodRangesConfig'] as Map).cast<String, dynamic>(),
          ),
      allowRouteOverlap: map['allowRouteOverlap'] as bool,
      clusterIpv4Cidr: map['clusterIpv4Cidr'] as String,
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] as String,
      createSubnetwork: map['createSubnetwork'] as bool,
      defaultPodIpv4RangeUtilization:
          map['defaultPodIpv4RangeUtilization'] as double,
      ipv6AccessType: map['ipv6AccessType'] as String,
      nodeIpv4Cidr: map['nodeIpv4Cidr'] as String,
      nodeIpv4CidrBlock: map['nodeIpv4CidrBlock'] as String,
      podCidrOverprovisionConfig:
          PodCIDROverprovisionConfigResponseContainerV1beta1.fromMap(
            (map['podCidrOverprovisionConfig'] as Map).cast<String, dynamic>(),
          ),
      servicesIpv4Cidr: map['servicesIpv4Cidr'] as String,
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] as String,
      servicesIpv6CidrBlock: map['servicesIpv6CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] as String,
      stackType: map['stackType'] as String,
      subnetIpv6CidrBlock: map['subnetIpv6CidrBlock'] as String,
      subnetworkName: map['subnetworkName'] as String,
      tpuIpv4CidrBlock: map['tpuIpv4CidrBlock'] as String,
      useIpAliases: map['useIpAliases'] as bool,
      useRoutes: map['useRoutes'] as bool,
    );
  }
}
