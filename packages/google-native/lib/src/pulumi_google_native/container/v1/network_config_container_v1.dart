// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config.dart';
import 'default_snat_status.dart';
import 'dnsconfig.dart';
import 'gateway_apiconfig.dart';
import 'network_config_datapath_provider.dart';
import 'network_config_private_ipv6_google_access.dart';
import 'service_external_ips_config.dart';

/// NetworkConfig reports the relative names of network & subnetwork.
class NetworkConfigContainerV1 {
  /// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
  final NetworkConfigDatapathProvider? datapathProvider;

  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.
  final DefaultSnatStatus? defaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfig? dnsConfig;

  /// Whether FQDN Network Policy is enabled on this cluster.
  final bool? enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final bool? enableIntraNodeVisibility;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final bool? enableL4ilbSubsetting;

  /// Whether multi-networking is enabled for this cluster.
  final bool? enableMultiNetworking;

  /// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
  final GatewayAPIConfig? gatewayApiConfig;

  /// Network bandwidth tier configuration.
  final ClusterNetworkPerformanceConfig? networkPerformanceConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
  final NetworkConfigPrivateIpv6GoogleAccess? privateIpv6GoogleAccess;

  /// ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.
  final ServiceExternalIPsConfig? serviceExternalIpsConfig;

  NetworkConfigContainerV1({
    this.datapathProvider,
    this.defaultSnatStatus,
    this.dnsConfig,
    this.enableFqdnNetworkPolicy,
    this.enableIntraNodeVisibility,
    this.enableL4ilbSubsetting,
    this.enableMultiNetworking,
    this.gatewayApiConfig,
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

  factory NetworkConfigContainerV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigContainerV1(
      datapathProvider: map['datapathProvider'] == null
          ? null
          : NetworkConfigDatapathProvider.fromValue(
              map['datapathProvider'] as String),
      defaultSnatStatus: map['defaultSnatStatus'] == null
          ? null
          : DefaultSnatStatus.fromMap(
              (map['defaultSnatStatus'] as Map).cast<String, dynamic>()),
      dnsConfig: map['dnsConfig'] == null
          ? null
          : DNSConfig.fromMap(
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
          : GatewayAPIConfig.fromMap(
              (map['gatewayApiConfig'] as Map).cast<String, dynamic>()),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : ClusterNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null
          ? null
          : NetworkConfigPrivateIpv6GoogleAccess.fromValue(
              map['privateIpv6GoogleAccess'] as String),
      serviceExternalIpsConfig: map['serviceExternalIpsConfig'] == null
          ? null
          : ServiceExternalIPsConfig.fromMap(
              (map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
