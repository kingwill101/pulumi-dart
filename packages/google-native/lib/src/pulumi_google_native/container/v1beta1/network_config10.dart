// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config2.dart';
import 'default_snat_status2.dart';
import 'dnsconfig2.dart';
import 'gateway_apiconfig2.dart';
import 'network_config_datapath_provider2.dart';
import 'network_config_in_transit_encryption_config.dart';
import 'network_config_private_ipv6_google_access2.dart';
import 'service_external_ips_config2.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfig10 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final NetworkConfigDatapathProvider2? datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final DefaultSnatStatus2? defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfig2? dnsConfig;

  /// Whether FQDN Network Policy is enabled on this cluster.
  final bool? enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final bool? enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final bool? enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  final bool? enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final GatewayAPIConfig2? gatewayApiConfig;

  /// Specify the details of in-transit encryption.
  final NetworkConfigInTransitEncryptionConfig? inTransitEncryptionConfig;

  /// Network bandwidth tier configuration.
  final ClusterNetworkPerformanceConfig2? networkPerformanceConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final NetworkConfigPrivateIpv6GoogleAccess2? privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final ServiceExternalIPsConfig2? serviceExternalIpsConfig;

  NetworkConfig10({
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
    final map = <String, dynamic>{};
    final datapathProviderValue = datapathProvider;
    if (datapathProviderValue != null) {
      map['datapathProvider'] = datapathProviderValue.value;
    }
    final defaultSnatStatusValue = defaultSnatStatus;
    if (defaultSnatStatusValue != null) {
      map['defaultSnatStatus'] = defaultSnatStatusValue.toMap();
    }
    final dnsConfigValue = dnsConfig;
    if (dnsConfigValue != null) {
      map['dnsConfig'] = dnsConfigValue.toMap();
    }
    final enableFqdnNetworkPolicyValue = enableFqdnNetworkPolicy;
    if (enableFqdnNetworkPolicyValue != null) {
      map['enableFqdnNetworkPolicy'] = enableFqdnNetworkPolicyValue;
    }
    final enableIntraNodeVisibilityValue = enableIntraNodeVisibility;
    if (enableIntraNodeVisibilityValue != null) {
      map['enableIntraNodeVisibility'] = enableIntraNodeVisibilityValue;
    }
    final enableL4ilbSubsettingValue = enableL4ilbSubsetting;
    if (enableL4ilbSubsettingValue != null) {
      map['enableL4ilbSubsetting'] = enableL4ilbSubsettingValue;
    }
    final enableMultiNetworkingValue = enableMultiNetworking;
    if (enableMultiNetworkingValue != null) {
      map['enableMultiNetworking'] = enableMultiNetworkingValue;
    }
    final gatewayApiConfigValue = gatewayApiConfig;
    if (gatewayApiConfigValue != null) {
      map['gatewayApiConfig'] = gatewayApiConfigValue.toMap();
    }
    final inTransitEncryptionConfigValue = inTransitEncryptionConfig;
    if (inTransitEncryptionConfigValue != null) {
      map['inTransitEncryptionConfig'] = inTransitEncryptionConfigValue.value;
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = networkPerformanceConfigValue.toMap();
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue.value;
    }
    final serviceExternalIpsConfigValue = serviceExternalIpsConfig;
    if (serviceExternalIpsConfigValue != null) {
      map['serviceExternalIpsConfig'] = serviceExternalIpsConfigValue.toMap();
    }
    return map;
  }

  factory NetworkConfig10.fromMap(Map<String, dynamic> map) {
    return NetworkConfig10(
      datapathProvider: map['datapathProvider'] == null
          ? null
          : NetworkConfigDatapathProvider2.fromValue(
              map['datapathProvider'] as String),
      defaultSnatStatus: map['defaultSnatStatus'] == null
          ? null
          : DefaultSnatStatus2.fromMap(
              (map['defaultSnatStatus'] as Map).cast<String, dynamic>()),
      dnsConfig: map['dnsConfig'] == null
          ? null
          : DNSConfig2.fromMap(
              (map['dnsConfig'] as Map).cast<String, dynamic>()),
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
          : GatewayAPIConfig2.fromMap(
              (map['gatewayApiConfig'] as Map).cast<String, dynamic>()),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] == null
          ? null
          : NetworkConfigInTransitEncryptionConfig.fromValue(
              map['inTransitEncryptionConfig'] as String),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : ClusterNetworkPerformanceConfig2.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : NetworkConfigPrivateIpv6GoogleAccess2.fromValue(
              map['privateIpv6GoogleAccess'] as String),
      serviceExternalIpsConfig: map['serviceExternalIpsConfig'] == null
          ? null
          : ServiceExternalIPsConfig2.fromMap(
              (map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
