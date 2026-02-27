// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_ip_allocation_policy_additional_ip_ranges_config/get_cluster_ip_allocation_policy_additional_ip_ranges_config.dart';
import '../get_cluster_ip_allocation_policy_additional_pod_ranges_config/get_cluster_ip_allocation_policy_additional_pod_ranges_config.dart';
import '../get_cluster_ip_allocation_policy_auto_ipam_config/get_cluster_ip_allocation_policy_auto_ipam_config.dart';
import '../get_cluster_ip_allocation_policy_network_tier_config/get_cluster_ip_allocation_policy_network_tier_config.dart';
import '../get_cluster_ip_allocation_policy_pod_cidr_overprovision_config/get_cluster_ip_allocation_policy_pod_cidr_overprovision_config.dart';

class GetClusterIpAllocationPolicy {
  /// AdditionalIPRangesConfig is the configuration for individual additional subnetworks attached to the cluster
  final List<GetClusterIpAllocationPolicyAdditionalIpRangesConfig>
      additionalIpRangesConfigs;

  /// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
  final List<GetClusterIpAllocationPolicyAdditionalPodRangesConfig>
      additionalPodRangesConfigs;

  /// AutoIpamConfig contains all information related to Auto IPAM.
  final List<GetClusterIpAllocationPolicyAutoIpamConfig> autoIpamConfigs;

  /// The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  final String clusterIpv4CidrBlock;

  /// The name of the existing secondary range in the cluster's subnetwork to use for pod IP addresses. Alternatively, cluster_ipv4_cidr_block can be used to automatically create a GKE-managed one.
  final String clusterSecondaryRangeName;

  /// Used to determine the default network tier for external IP addresses on cluster resources, such as node pools and load balancers.
  final List<GetClusterIpAllocationPolicyNetworkTierConfig> networkTierConfigs;

  /// Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  final List<GetClusterIpAllocationPolicyPodCidrOverprovisionConfig>
      podCidrOverprovisionConfigs;

  /// The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use.
  final String servicesIpv4CidrBlock;

  /// The name of the existing secondary range in the cluster's subnetwork to use for service ClusterIPs. Alternatively, services_ipv4_cidr_block can be used to automatically create a GKE-managed one.
  final String servicesSecondaryRangeName;

  /// The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set
  final String stackType;

  GetClusterIpAllocationPolicy({
    required this.additionalIpRangesConfigs,
    required this.additionalPodRangesConfigs,
    required this.autoIpamConfigs,
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.networkTierConfigs,
    required this.podCidrOverprovisionConfigs,
    required this.servicesIpv4CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.stackType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalIpRangesConfigs'] = pulumi.Input.encodeList<
            GetClusterIpAllocationPolicyAdditionalIpRangesConfig,
            Map<String, dynamic>>(
        additionalIpRangesConfigs, (value) => value.toMap());
    map['additionalPodRangesConfigs'] = pulumi.Input.encodeList<
            GetClusterIpAllocationPolicyAdditionalPodRangesConfig,
            Map<String, dynamic>>(
        additionalPodRangesConfigs, (value) => value.toMap());
    map['autoIpamConfigs'] = pulumi.Input.encodeList<
        GetClusterIpAllocationPolicyAutoIpamConfig,
        Map<String, dynamic>>(autoIpamConfigs, (value) => value.toMap());
    map['clusterIpv4CidrBlock'] = clusterIpv4CidrBlock;
    map['clusterSecondaryRangeName'] = clusterSecondaryRangeName;
    map['networkTierConfigs'] = pulumi.Input.encodeList<
        GetClusterIpAllocationPolicyNetworkTierConfig,
        Map<String, dynamic>>(networkTierConfigs, (value) => value.toMap());
    map['podCidrOverprovisionConfigs'] = pulumi.Input.encodeList<
            GetClusterIpAllocationPolicyPodCidrOverprovisionConfig,
            Map<String, dynamic>>(
        podCidrOverprovisionConfigs, (value) => value.toMap());
    map['servicesIpv4CidrBlock'] = servicesIpv4CidrBlock;
    map['servicesSecondaryRangeName'] = servicesSecondaryRangeName;
    map['stackType'] = stackType;
    return map;
  }

  factory GetClusterIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicy(
      additionalIpRangesConfigs: pulumi.Input.decodeList<
              GetClusterIpAllocationPolicyAdditionalIpRangesConfig>(
          map['additionalIpRangesConfigs'],
          (value) =>
              GetClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      additionalPodRangesConfigs: pulumi.Input.decodeList<
              GetClusterIpAllocationPolicyAdditionalPodRangesConfig>(
          map['additionalPodRangesConfigs'],
          (value) =>
              GetClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      autoIpamConfigs:
          pulumi.Input.decodeList<GetClusterIpAllocationPolicyAutoIpamConfig>(
              map['autoIpamConfigs'],
              (value) => GetClusterIpAllocationPolicyAutoIpamConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] as String,
      networkTierConfigs: pulumi.Input.decodeList<
              GetClusterIpAllocationPolicyNetworkTierConfig>(
          map['networkTierConfigs'],
          (value) => GetClusterIpAllocationPolicyNetworkTierConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      podCidrOverprovisionConfigs: pulumi.Input.decodeList<
              GetClusterIpAllocationPolicyPodCidrOverprovisionConfig>(
          map['podCidrOverprovisionConfigs'],
          (value) =>
              GetClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] as String,
      stackType: map['stackType'] as String,
    );
  }
}
