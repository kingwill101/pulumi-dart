// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_island_mode_cidr_config.dart';
import 'bare_metal_multiple_network_interfaces_config.dart';
import 'bare_metal_sr_iov_config.dart';

/// Specifies the cluster network configuration.
class BareMetalNetworkConfig {
  /// Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  final bool? advancedNetworking;

  /// Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  final BareMetalIslandModeCidrConfig? islandModeCidr;

  /// Configuration for multiple network interfaces.
  final BareMetalMultipleNetworkInterfacesConfig?
      multipleNetworkInterfacesConfig;

  /// Configuration for SR-IOV.
  final BareMetalSrIovConfig? srIovConfig;

  /// Creates a new [BareMetalNetworkConfig].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  /// [islandModeCidr] Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  /// [srIovConfig] Configuration for SR-IOV.
  BareMetalNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
    this.srIovConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedNetworkingValue = advancedNetworking;
    if (advancedNetworkingValue != null) {
      map['advancedNetworking'] = advancedNetworkingValue;
    }
    final islandModeCidrValue = islandModeCidr;
    if (islandModeCidrValue != null) {
      map['islandModeCidr'] = islandModeCidrValue.toMap();
    }
    final multipleNetworkInterfacesConfigValue =
        multipleNetworkInterfacesConfig;
    if (multipleNetworkInterfacesConfigValue != null) {
      map['multipleNetworkInterfacesConfig'] =
          multipleNetworkInterfacesConfigValue.toMap();
    }
    final srIovConfigValue = srIovConfig;
    if (srIovConfigValue != null) {
      map['srIovConfig'] = srIovConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNetworkConfig(
      advancedNetworking: map['advancedNetworking'] == null
          ? null
          : map['advancedNetworking'] as bool,
      islandModeCidr: map['islandModeCidr'] == null
          ? null
          : BareMetalIslandModeCidrConfig.fromMap(
              (map['islandModeCidr'] as Map).cast<String, dynamic>()),
      multipleNetworkInterfacesConfig:
          map['multipleNetworkInterfacesConfig'] == null
              ? null
              : BareMetalMultipleNetworkInterfacesConfig.fromMap(
                  (map['multipleNetworkInterfacesConfig'] as Map)
                      .cast<String, dynamic>()),
      srIovConfig: map['srIovConfig'] == null
          ? null
          : BareMetalSrIovConfig.fromMap(
              (map['srIovConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
