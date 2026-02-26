// ignore_for_file: unused_element, unnecessary_cast

import '../bare_metal_cluster_network_config_island_mode_cidr/bare_metal_cluster_network_config_island_mode_cidr.dart';
import '../bare_metal_cluster_network_config_multiple_network_interfaces_config/bare_metal_cluster_network_config_multiple_network_interfaces_config.dart';
import '../bare_metal_cluster_network_config_sr_iov_config/bare_metal_cluster_network_config_sr_iov_config.dart';

class BareMetalClusterNetworkConfig {
  /// Enables the use of advanced Anthos networking features, such as Bundled
  /// Load Balancing with BGP or the egress NAT gateway.
  /// Setting configuration for advanced networking features will automatically
  /// set this flag.
  final bool? advancedNetworking;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalClusterNetworkConfigIslandModeCidr? islandModeCidr;

  /// Configuration for multiple network interfaces.
  /// Structure is documented below.
  final BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig?
      multipleNetworkInterfacesConfig;

  /// Configuration for SR-IOV.
  /// Structure is documented below.
  final BareMetalClusterNetworkConfigSrIovConfig? srIovConfig;

  BareMetalClusterNetworkConfig({
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

  factory BareMetalClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfig(
      advancedNetworking: map['advancedNetworking'] == null
          ? null
          : map['advancedNetworking'] as bool,
      islandModeCidr: map['islandModeCidr'] == null
          ? null
          : BareMetalClusterNetworkConfigIslandModeCidr.fromMap(
              (map['islandModeCidr'] as Map).cast<String, dynamic>()),
      multipleNetworkInterfacesConfig:
          map['multipleNetworkInterfacesConfig'] == null
              ? null
              : BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig
                  .fromMap((map['multipleNetworkInterfacesConfig'] as Map)
                      .cast<String, dynamic>()),
      srIovConfig: map['srIovConfig'] == null
          ? null
          : BareMetalClusterNetworkConfigSrIovConfig.fromMap(
              (map['srIovConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
