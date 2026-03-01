// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config_container_v1beta1.dart';
import 'default_snat_status_container_v1beta1.dart';
import 'dnsconfig_container_v1beta1.dart';
import 'gateway_apiconfig_container_v1beta1.dart';
import 'network_config_datapath_provider_container_v1beta1.dart';
import 'network_config_in_transit_encryption_config.dart';
import 'network_config_private_ipv6_google_access_container_v1beta1.dart';
import 'service_external_ips_config_container_v1beta1.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigContainerV1beta1 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final NetworkConfigDatapathProviderContainerV1beta1? datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final DefaultSnatStatusContainerV1beta1? defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfigContainerV1beta1? dnsConfig;

  /// Whether FQDN Network Policy is enabled on this cluster.
  final bool? enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final bool? enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final bool? enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  final bool? enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final GatewayAPIConfigContainerV1beta1? gatewayApiConfig;

  /// Specify the details of in-transit encryption.
  final NetworkConfigInTransitEncryptionConfig? inTransitEncryptionConfig;

  /// Network bandwidth tier configuration.
  final ClusterNetworkPerformanceConfigContainerV1beta1?
  networkPerformanceConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1?
  privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final ServiceExternalIPsConfigContainerV1beta1? serviceExternalIpsConfig;

  /// Creates a new [NetworkConfigContainerV1beta1].
  /// [datapathProvider] The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  /// [defaultSnatStatus] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  /// [dnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster.
  /// [enableIntraNodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableL4ilbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [gatewayApiConfig] GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  /// [inTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  /// [serviceExternalIpsConfig] ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  NetworkConfigContainerV1beta1({
    this.datapathProvider,
    this.defaultSnatStatus,
    this.dnsConfig,
    this.enableFqdnNetworkPolicy,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.enableMultiNetworking,
    this.gatewayApiConfig,
    this.inTransitEncryptionConfig,
    this.networkPerformanceConfig,
    this.privateIpv6GoogleAccess,
    this.serviceExternalIpsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datapathProvider': ?datapathProvider == null
          ? null
          : datapathProvider!.value,
      'defaultSnatStatus': ?defaultSnatStatus == null
          ? null
          : defaultSnatStatus!.toMap(),
      'dnsConfig': ?dnsConfig == null ? null : dnsConfig!.toMap(),
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntraNodeVisibility': ?enableIntraNodeVisibility,
      'enableL4ilbSubsetting': ?enableL4ilbSubsetting,
      'enableMultiNetworking': ?enableMultiNetworking,
      'gatewayApiConfig': ?gatewayApiConfig == null
          ? null
          : gatewayApiConfig!.toMap(),
      'inTransitEncryptionConfig': ?inTransitEncryptionConfig == null
          ? null
          : inTransitEncryptionConfig!.value,
      'networkPerformanceConfig': ?networkPerformanceConfig == null
          ? null
          : networkPerformanceConfig!.toMap(),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess == null
          ? null
          : privateIpv6GoogleAccess!.value,
      'serviceExternalIpsConfig': ?serviceExternalIpsConfig == null
          ? null
          : serviceExternalIpsConfig!.toMap(),
    };
  }

  factory NetworkConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigContainerV1beta1(
      datapathProvider: map['datapathProvider'] == null
          ? null
          : NetworkConfigDatapathProviderContainerV1beta1.fromValue(
              map['datapathProvider'] as String,
            ),
      defaultSnatStatus: map['defaultSnatStatus'] == null
          ? null
          : DefaultSnatStatusContainerV1beta1.fromMap(
              (map['defaultSnatStatus'] as Map).cast<String, dynamic>(),
            ),
      dnsConfig: map['dnsConfig'] == null
          ? null
          : DNSConfigContainerV1beta1.fromMap(
              (map['dnsConfig'] as Map).cast<String, dynamic>(),
            ),
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] == null
          ? null
          : map['enableFqdnNetworkPolicy'] as bool,
      enableIntraNodeVisibility: map['enableIntraNodeVisibility'] == null
          ? null
          : map['enableIntraNodeVisibility'] as bool,
      enableL4ilbSubsetting: map['enableL4ilbSubsetting'] == null
          ? null
          : map['enableL4ilbSubsetting'] as bool,
      enableMultiNetworking: map['enableMultiNetworking'] == null
          ? null
          : map['enableMultiNetworking'] as bool,
      gatewayApiConfig: map['gatewayApiConfig'] == null
          ? null
          : GatewayAPIConfigContainerV1beta1.fromMap(
              (map['gatewayApiConfig'] as Map).cast<String, dynamic>(),
            ),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] == null
          ? null
          : NetworkConfigInTransitEncryptionConfig.fromValue(
              map['inTransitEncryptionConfig'] as String,
            ),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : ClusterNetworkPerformanceConfigContainerV1beta1.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>(),
            ),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : NetworkConfigPrivateIpv6GoogleAccessContainerV1beta1.fromValue(
              map['privateIpv6GoogleAccess'] as String,
            ),
      serviceExternalIpsConfig: map['serviceExternalIpsConfig'] == null
          ? null
          : ServiceExternalIPsConfigContainerV1beta1.fromMap(
              (map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
