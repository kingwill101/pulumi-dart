// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config_response_container_v1beta1.dart';
import 'default_snat_status_response_container_v1beta1.dart';
import 'dnsconfig_response_container_v1beta1.dart';
import 'gateway_apiconfig_response_container_v1beta1.dart';
import 'service_external_ips_config_response_container_v1beta1.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigResponseContainerV1beta1 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final String datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final DefaultSnatStatusResponseContainerV1beta1 defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfigResponseContainerV1beta1 dnsConfig;

  /// Whether FQDN Network Policy is enabled on this cluster.
  final bool enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final bool enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final bool enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  final bool enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final GatewayAPIConfigResponseContainerV1beta1 gatewayApiConfig;

  /// Specify the details of in-transit encryption.
  final String inTransitEncryptionConfig;

  /// The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  final String network;

  /// Network bandwidth tier configuration.
  final ClusterNetworkPerformanceConfigResponseContainerV1beta1
  networkPerformanceConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final String privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final ServiceExternalIPsConfigResponseContainerV1beta1
  serviceExternalIpsConfig;

  /// The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  final String subnetwork;

  /// Creates a new [NetworkConfigResponseContainerV1beta1].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [inTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [network] The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  /// [subnetwork] The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
  NetworkConfigResponseContainerV1beta1({
    required this.datapathProvider,
    required this.defaultSnatStatus,
    required this.dnsConfig,
    required this.enableFqdnNetworkPolicy,
    required this.enableIntraNodeVisibility,
    required this.enableL4ilbSubsetting,
    required this.enableMultiNetworking,
    required this.gatewayApiConfig,
    required this.inTransitEncryptionConfig,
    required this.network,
    required this.networkPerformanceConfig,
    required this.privateIpv6GoogleAccess,
    required this.serviceExternalIpsConfig,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datapathProvider': datapathProvider,
      'defaultSnatStatus': defaultSnatStatus.toMap(),
      'dnsConfig': dnsConfig.toMap(),
      'enableFqdnNetworkPolicy': enableFqdnNetworkPolicy,
      'enableIntraNodeVisibility': enableIntraNodeVisibility,
      'enableL4ilbSubsetting': enableL4ilbSubsetting,
      'enableMultiNetworking': enableMultiNetworking,
      'gatewayApiConfig': gatewayApiConfig.toMap(),
      'inTransitEncryptionConfig': inTransitEncryptionConfig,
      'network': network,
      'networkPerformanceConfig': networkPerformanceConfig.toMap(),
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'serviceExternalIpsConfig': serviceExternalIpsConfig.toMap(),
      'subnetwork': subnetwork,
    };
  }

  factory NetworkConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkConfigResponseContainerV1beta1(
      datapathProvider: map['datapathProvider'] as String,
      defaultSnatStatus: DefaultSnatStatusResponseContainerV1beta1.fromMap(
        (map['defaultSnatStatus'] as Map).cast<String, dynamic>(),
      ),
      dnsConfig: DNSConfigResponseContainerV1beta1.fromMap(
        (map['dnsConfig'] as Map).cast<String, dynamic>(),
      ),
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] as bool,
      enableIntraNodeVisibility: map['enableIntraNodeVisibility'] as bool,
      enableL4ilbSubsetting: map['enableL4ilbSubsetting'] as bool,
      enableMultiNetworking: map['enableMultiNetworking'] as bool,
      gatewayApiConfig: GatewayAPIConfigResponseContainerV1beta1.fromMap(
        (map['gatewayApiConfig'] as Map).cast<String, dynamic>(),
      ),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] as String,
      network: map['network'] as String,
      networkPerformanceConfig:
          ClusterNetworkPerformanceConfigResponseContainerV1beta1.fromMap(
            (map['networkPerformanceConfig'] as Map).cast<String, dynamic>(),
          ),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] as String,
      serviceExternalIpsConfig:
          ServiceExternalIPsConfigResponseContainerV1beta1.fromMap(
            (map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>(),
          ),
      subnetwork: map['subnetwork'] as String,
    );
  }
}
