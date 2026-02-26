// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_ip_allocation_policy_additional_ip_ranges_config/cluster_ip_allocation_policy_additional_ip_ranges_config.dart';
import '../cluster_ip_allocation_policy_additional_pod_ranges_config/cluster_ip_allocation_policy_additional_pod_ranges_config.dart';
import '../cluster_ip_allocation_policy_auto_ipam_config/cluster_ip_allocation_policy_auto_ipam_config.dart';
import '../cluster_ip_allocation_policy_network_tier_config/cluster_ip_allocation_policy_network_tier_config.dart';
import '../cluster_ip_allocation_policy_pod_cidr_overprovision_config/cluster_ip_allocation_policy_pod_cidr_overprovision_config.dart';

class ClusterIpAllocationPolicy {
  /// The configuration for individual additional subnetworks attached to the cluster.
  /// Structure is documented below.
  final List<ClusterIpAllocationPolicyAdditionalIpRangesConfig>?
      additionalIpRangesConfigs;

  /// The configuration for additional pod secondary ranges at
  /// the cluster level. Used for Autopilot clusters and Standard clusters with which control of the
  /// secondary Pod IP address assignment to node pools isn't needed. Structure is documented below.
  final ClusterIpAllocationPolicyAdditionalPodRangesConfig?
      additionalPodRangesConfig;

  /// All the information related to Auto IPAM. Structure is documented below
  final ClusterIpAllocationPolicyAutoIpamConfig? autoIpamConfig;

  /// The IP address range for the cluster pod IPs.
  /// Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14)
  /// to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14)
  /// from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
  /// pick a specific range to use.
  final String? clusterIpv4CidrBlock;

  /// The name of the existing secondary
  /// range in the cluster's subnetwork to use for pod IP addresses. Alternatively,
  /// <span pulumi-lang-nodejs="`clusterIpv4CidrBlock`" pulumi-lang-dotnet="`ClusterIpv4CidrBlock`" pulumi-lang-go="`clusterIpv4CidrBlock`" pulumi-lang-python="`cluster_ipv4_cidr_block`" pulumi-lang-yaml="`clusterIpv4CidrBlock`" pulumi-lang-java="`clusterIpv4CidrBlock`">`cluster_ipv4_cidr_block`</span> can be used to automatically create a GKE-managed one.
  final String? clusterSecondaryRangeName;

  /// Contains network tier information. Structure is documented below
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedAutoIpamConfig"" pulumi-lang-dotnet=""NestedAutoIpamConfig"" pulumi-lang-go=""nestedAutoIpamConfig"" pulumi-lang-python=""nested_auto_ipam_config"" pulumi-lang-yaml=""nestedAutoIpamConfig"" pulumi-lang-java=""nestedAutoIpamConfig"">"nested_auto_ipam_config"</span>></a>The auto ipam config supports:
  final ClusterIpAllocationPolicyNetworkTierConfig? networkTierConfig;

  /// Configuration for cluster level pod cidr overprovision. Default is disabled=false.
  final ClusterIpAllocationPolicyPodCidrOverprovisionConfig?
      podCidrOverprovisionConfig;

  /// The IP address range of the services IPs in this cluster.
  /// Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14)
  /// to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14)
  /// from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
  /// pick a specific range to use.
  final String? servicesIpv4CidrBlock;

  /// The name of the existing
  /// secondary range in the cluster's subnetwork to use for service `ClusterIP`s.
  /// Alternatively, <span pulumi-lang-nodejs="`servicesIpv4CidrBlock`" pulumi-lang-dotnet="`ServicesIpv4CidrBlock`" pulumi-lang-go="`servicesIpv4CidrBlock`" pulumi-lang-python="`services_ipv4_cidr_block`" pulumi-lang-yaml="`servicesIpv4CidrBlock`" pulumi-lang-java="`servicesIpv4CidrBlock`">`services_ipv4_cidr_block`</span> can be used to automatically create a
  /// GKE-managed one.
  final String? servicesSecondaryRangeName;

  /// The IP Stack Type of the cluster.
  /// Default value is `IPV4`.
  /// Possible values are `IPV4` and `IPV4_IPV6`.
  final String? stackType;

  ClusterIpAllocationPolicy({
    this.additionalIpRangesConfigs,
    this.additionalPodRangesConfig,
    this.autoIpamConfig,
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.networkTierConfig,
    this.podCidrOverprovisionConfig,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.stackType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalIpRangesConfigsValue = additionalIpRangesConfigs;
    if (additionalIpRangesConfigsValue != null) {
      map['additionalIpRangesConfigs'] = Input.encodeList<
              ClusterIpAllocationPolicyAdditionalIpRangesConfig,
              Map<String, dynamic>>(
          additionalIpRangesConfigsValue, (value) => value.toMap());
    }
    final additionalPodRangesConfigValue = additionalPodRangesConfig;
    if (additionalPodRangesConfigValue != null) {
      map['additionalPodRangesConfig'] = additionalPodRangesConfigValue.toMap();
    }
    final autoIpamConfigValue = autoIpamConfig;
    if (autoIpamConfigValue != null) {
      map['autoIpamConfig'] = autoIpamConfigValue.toMap();
    }
    final clusterIpv4CidrBlockValue = clusterIpv4CidrBlock;
    if (clusterIpv4CidrBlockValue != null) {
      map['clusterIpv4CidrBlock'] = clusterIpv4CidrBlockValue;
    }
    final clusterSecondaryRangeNameValue = clusterSecondaryRangeName;
    if (clusterSecondaryRangeNameValue != null) {
      map['clusterSecondaryRangeName'] = clusterSecondaryRangeNameValue;
    }
    final networkTierConfigValue = networkTierConfig;
    if (networkTierConfigValue != null) {
      map['networkTierConfig'] = networkTierConfigValue.toMap();
    }
    final podCidrOverprovisionConfigValue = podCidrOverprovisionConfig;
    if (podCidrOverprovisionConfigValue != null) {
      map['podCidrOverprovisionConfig'] =
          podCidrOverprovisionConfigValue.toMap();
    }
    final servicesIpv4CidrBlockValue = servicesIpv4CidrBlock;
    if (servicesIpv4CidrBlockValue != null) {
      map['servicesIpv4CidrBlock'] = servicesIpv4CidrBlockValue;
    }
    final servicesSecondaryRangeNameValue = servicesSecondaryRangeName;
    if (servicesSecondaryRangeNameValue != null) {
      map['servicesSecondaryRangeName'] = servicesSecondaryRangeNameValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    return map;
  }

  factory ClusterIpAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicy(
      additionalIpRangesConfigs: map['additionalIpRangesConfigs'] == null
          ? null
          : Input.decodeList<ClusterIpAllocationPolicyAdditionalIpRangesConfig>(
              map['additionalIpRangesConfigs'],
              (value) =>
                  ClusterIpAllocationPolicyAdditionalIpRangesConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null
          ? null
          : ClusterIpAllocationPolicyAdditionalPodRangesConfig.fromMap(
              (map['additionalPodRangesConfig'] as Map)
                  .cast<String, dynamic>()),
      autoIpamConfig: map['autoIpamConfig'] == null
          ? null
          : ClusterIpAllocationPolicyAutoIpamConfig.fromMap(
              (map['autoIpamConfig'] as Map).cast<String, dynamic>()),
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] == null
          ? null
          : map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] == null
          ? null
          : map['clusterSecondaryRangeName'] as String,
      networkTierConfig: map['networkTierConfig'] == null
          ? null
          : ClusterIpAllocationPolicyNetworkTierConfig.fromMap(
              (map['networkTierConfig'] as Map).cast<String, dynamic>()),
      podCidrOverprovisionConfig: map['podCidrOverprovisionConfig'] == null
          ? null
          : ClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(
              (map['podCidrOverprovisionConfig'] as Map)
                  .cast<String, dynamic>()),
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] == null
          ? null
          : map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] == null
          ? null
          : map['servicesSecondaryRangeName'] as String,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
    );
  }
}
