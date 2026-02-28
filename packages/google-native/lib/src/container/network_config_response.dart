// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config_response.dart';
import 'default_snat_status_response.dart';
import 'dnsconfig_response.dart';
import 'gateway_apiconfig_response.dart';
import 'service_external_ips_config_response.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigResponse {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final String datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final DefaultSnatStatusResponse defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfigResponse dnsConfig;

  /// Whether FQDN Network Policy is enabled on this cluster.
  final bool enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final bool enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final bool enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  final bool enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final GatewayAPIConfigResponse gatewayApiConfig;

  /// The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  final String network;

  /// Network bandwidth tier configuration.
  final ClusterNetworkPerformanceConfigResponse networkPerformanceConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final String privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final ServiceExternalIPsConfigResponse serviceExternalIpsConfig;

  /// The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  final String subnetwork;

  /// Creates a new [NetworkConfigResponse].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [network] The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  /// [subnetwork] The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  NetworkConfigResponse({
    required this.datapathProvider,
    required this.defaultSnatStatus,
    required this.dnsConfig,
    required this.enableFqdnNetworkPolicy,
    required this.enableIntraNodeVisibility,
    required this.enableL4ilbSubsetting,
    required this.enableMultiNetworking,
    required this.gatewayApiConfig,
    required this.network,
    required this.networkPerformanceConfig,
    required this.privateIpv6GoogleAccess,
    required this.serviceExternalIpsConfig,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datapathProvider'] = datapathProvider;
    map['defaultSnatStatus'] = defaultSnatStatus.toMap();
    map['dnsConfig'] = dnsConfig.toMap();
    map['enableFqdnNetworkPolicy'] = enableFqdnNetworkPolicy;
    map['enableIntraNodeVisibility'] = enableIntraNodeVisibility;
    map['enableL4ilbSubsetting'] = enableL4ilbSubsetting;
    map['enableMultiNetworking'] = enableMultiNetworking;
    map['gatewayApiConfig'] = gatewayApiConfig.toMap();
    map['network'] = network;
    map['networkPerformanceConfig'] = networkPerformanceConfig.toMap();
    map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccess;
    map['serviceExternalIpsConfig'] = serviceExternalIpsConfig.toMap();
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      datapathProvider: map['datapathProvider'] as String,
      defaultSnatStatus: DefaultSnatStatusResponse.fromMap(
          (map['defaultSnatStatus'] as Map).cast<String, dynamic>()),
      dnsConfig: DNSConfigResponse.fromMap(
          (map['dnsConfig'] as Map).cast<String, dynamic>()),
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] as bool,
      enableIntraNodeVisibility: map['enableIntraNodeVisibility'] as bool,
      enableL4ilbSubsetting: map['enableL4ilbSubsetting'] as bool,
      enableMultiNetworking: map['enableMultiNetworking'] as bool,
      gatewayApiConfig: GatewayAPIConfigResponse.fromMap(
          (map['gatewayApiConfig'] as Map).cast<String, dynamic>()),
      network: map['network'] as String,
      networkPerformanceConfig: ClusterNetworkPerformanceConfigResponse.fromMap(
          (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      serviceExternalIpsConfig: ServiceExternalIPsConfigResponse.fromMap(
          (map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>()),
      subnetwork: map['subnetwork'] as String,
    );
  }
}
