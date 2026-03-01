// ignore_for_file: unused_element, unnecessary_cast

import 'ipallocation_policy_ipv6_access_type_container_v1beta1.dart';
import 'ipallocation_policy_stack_type_container_v1beta1.dart';
import 'pod_cidroverprovision_config_container_v1beta1.dart';

/// Configuration for controlling how IPs are allocated in the cluster.
class IPAllocationPolicyContainerV1beta1 {
  /// If true, allow allocation of cluster CIDR ranges that overlap with certain kinds of network routes. By default we do not allow cluster CIDR ranges to intersect with any user declared routes. With allow_route_overlap == true, we allow overlapping with CIDR ranges that are larger than the cluster CIDR range. If this field is set to true, then cluster and services CIDRs must be fully-specified (e.g. `10.96.0.0/14`, but not `/14`), which means: 1) When `use_ip_aliases` is true, `cluster_ipv4_cidr_block` and `services_ipv4_cidr_block` must be fully-specified. 2) When `use_ip_aliases` is false, `cluster.cluster_ipv4_cidr` muse be fully-specified.
  final bool? allowRouteOverlap;

  /// This field is deprecated, use cluster_ipv4_cidr_block.
  final String? clusterIpv4Cidr;

  /// The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String? clusterIpv4CidrBlock;

  /// The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  final String? clusterSecondaryRangeName;

  /// Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  final bool? createSubnetwork;

  /// The ipv6 access type (internal or external) when create_subnetwork is true
  final IPAllocationPolicyIpv6AccessTypeContainerV1beta1? ipv6AccessType;

  /// This field is deprecated, use node_ipv4_cidr_block.
  final String? nodeIpv4Cidr;

  /// The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String? nodeIpv4CidrBlock;

  /// [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  final PodCIDROverprovisionConfigContainerV1beta1? podCidrOverprovisionConfig;

  /// This field is deprecated, use services_ipv4_cidr_block.
  final String? servicesIpv4Cidr;

  /// The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String? servicesIpv4CidrBlock;

  /// The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  final String? servicesSecondaryRangeName;

  /// IP stack type
  final IPAllocationPolicyStackTypeContainerV1beta1? stackType;

  /// A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  final String? subnetworkName;

  /// The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. This field is deprecated, use cluster.tpu_config.ipv4_cidr_block instead.
  final String? tpuIpv4CidrBlock;

  /// Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final bool? useIpAliases;

  /// Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  final bool? useRoutes;

  /// Creates a new [IPAllocationPolicyContainerV1beta1].
  /// [allowRouteOverlap] If true, allow allocation of cluster CIDR ranges that overlap with certain kinds of network routes. By default we do not allow cluster CIDR ranges to intersect with any user declared routes. With allow_route_overlap == true, we allow overlapping with CIDR ranges that are larger than the cluster CIDR range. If this field is set to true, then cluster and services CIDRs must be fully-specified (e.g. `10.96.0.0/14`, but not `/14`), which means: 1) When `use_ip_aliases` is true, `cluster_ipv4_cidr_block` and `services_ipv4_cidr_block` must be fully-specified. 2) When `use_ip_aliases` is false, `cluster.cluster_ipv4_cidr` muse be fully-specified.
  /// [clusterIpv4Cidr] This field is deprecated, use cluster_ipv4_cidr_block.
  /// [clusterIpv4CidrBlock] The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [clusterSecondaryRangeName] The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  /// [createSubnetwork] Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.
  /// [ipv6AccessType] The ipv6 access type (internal or external) when create_subnetwork is true
  /// [nodeIpv4Cidr] This field is deprecated, use node_ipv4_cidr_block.
  /// [nodeIpv4CidrBlock] The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [podCidrOverprovisionConfig] [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node depends on max_pods_per_node. By default, the value of max_pods_per_node is doubled and then rounded off to next power of 2 to get the size of pod CIDR block per node. Example: max_pods_per_node of 30 would result in 64 IPs (/26). This config can disable the doubling of IPs (we still round off to next power of 2) Example: max_pods_per_node of 30 will result in 32 IPs (/27) when overprovisioning is disabled.
  /// [servicesIpv4Cidr] This field is deprecated, use services_ipv4_cidr_block.
  /// [servicesIpv4CidrBlock] The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  /// [servicesSecondaryRangeName] The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases and create_subnetwork is false.
  /// [stackType] IP stack type
  /// [subnetworkName] A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.
  /// [tpuIpv4CidrBlock] The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. This field is deprecated, use cluster.tpu_config.ipv4_cidr_block instead.
  /// [useIpAliases] Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  /// [useRoutes] Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode
  IPAllocationPolicyContainerV1beta1({
    this.allowRouteOverlap,
    this.clusterIpv4Cidr,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.createSubnetwork,
    this.ipv6AccessType,
    this.nodeIpv4Cidr,
    this.nodeIpv4CidrBlock,
    this.podCidrOverprovisionConfig,
    this.servicesIpv4Cidr,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
    this.subnetworkName,
    this.tpuIpv4CidrBlock,
    this.useIpAliases,
    this.useRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRouteOverlap': ?allowRouteOverlap,
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterIpv4CidrBlock': ?clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': ?clusterSecondaryRangeName,
      'createSubnetwork': ?createSubnetwork,
      'ipv6AccessType': ?ipv6AccessType == null ? null : ipv6AccessType!.value,
      'nodeIpv4Cidr': ?nodeIpv4Cidr,
      'nodeIpv4CidrBlock': ?nodeIpv4CidrBlock,
      'podCidrOverprovisionConfig': ?podCidrOverprovisionConfig == null
          ? null
          : podCidrOverprovisionConfig!.toMap(),
      'servicesIpv4Cidr': ?servicesIpv4Cidr,
      'servicesIpv4CidrBlock': ?servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': ?servicesSecondaryRangeName,
      'stackType': ?stackType == null ? null : stackType!.value,
      'subnetworkName': ?subnetworkName,
      'tpuIpv4CidrBlock': ?tpuIpv4CidrBlock,
      'useIpAliases': ?useIpAliases,
      'useRoutes': ?useRoutes,
    };
  }

  factory IPAllocationPolicyContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return IPAllocationPolicyContainerV1beta1(
      allowRouteOverlap: map['allowRouteOverlap'] == null
          ? null
          : map['allowRouteOverlap'] as bool,
      clusterIpv4Cidr: map['clusterIpv4Cidr'] == null
          ? null
          : map['clusterIpv4Cidr'] as String,
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] == null
          ? null
          : map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] == null
          ? null
          : map['clusterSecondaryRangeName'] as String,
      createSubnetwork: map['createSubnetwork'] == null
          ? null
          : map['createSubnetwork'] as bool,
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : IPAllocationPolicyIpv6AccessTypeContainerV1beta1.fromValue(
              map['ipv6AccessType'] as String,
            ),
      nodeIpv4Cidr: map['nodeIpv4Cidr'] == null
          ? null
          : map['nodeIpv4Cidr'] as String,
      nodeIpv4CidrBlock: map['nodeIpv4CidrBlock'] == null
          ? null
          : map['nodeIpv4CidrBlock'] as String,
      podCidrOverprovisionConfig: map['podCidrOverprovisionConfig'] == null
          ? null
          : PodCIDROverprovisionConfigContainerV1beta1.fromMap(
              (map['podCidrOverprovisionConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      servicesIpv4Cidr: map['servicesIpv4Cidr'] == null
          ? null
          : map['servicesIpv4Cidr'] as String,
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] == null
          ? null
          : map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] == null
          ? null
          : map['servicesSecondaryRangeName'] as String,
      stackType: map['stackType'] == null
          ? null
          : IPAllocationPolicyStackTypeContainerV1beta1.fromValue(
              map['stackType'] as String,
            ),
      subnetworkName: map['subnetworkName'] == null
          ? null
          : map['subnetworkName'] as String,
      tpuIpv4CidrBlock: map['tpuIpv4CidrBlock'] == null
          ? null
          : map['tpuIpv4CidrBlock'] as String,
      useIpAliases: map['useIpAliases'] == null
          ? null
          : map['useIpAliases'] as bool,
      useRoutes: map['useRoutes'] == null ? null : map['useRoutes'] as bool,
    );
  }
}
