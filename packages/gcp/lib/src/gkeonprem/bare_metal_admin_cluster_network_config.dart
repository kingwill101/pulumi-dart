// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_network_config_island_mode_cidr.dart';
import 'bare_metal_admin_cluster_network_config_multiple_network_interfaces_config.dart';

class BareMetalAdminClusterNetworkConfig {
  /// Enables the use of advanced Anthos networking features.
  final bool? advancedNetworking;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterNetworkConfigIslandModeCidr? islandModeCidr;

  /// Configuration for multiple network interfaces.
  /// Structure is documented below.
  final BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig?
  multipleNetworkInterfacesConfig;

  /// Creates a new [BareMetalAdminClusterNetworkConfig].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features.
  /// [islandModeCidr] A nested object resource.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  BareMetalAdminClusterNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'islandModeCidr': ?islandModeCidr == null
          ? null
          : islandModeCidr!.toMap(),
      'multipleNetworkInterfacesConfig':
          ?multipleNetworkInterfacesConfig == null
          ? null
          : multipleNetworkInterfacesConfig!.toMap(),
    };
  }

  factory BareMetalAdminClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNetworkConfig(
      advancedNetworking: map['advancedNetworking'] == null
          ? null
          : map['advancedNetworking'] as bool,
      islandModeCidr: map['islandModeCidr'] == null
          ? null
          : BareMetalAdminClusterNetworkConfigIslandModeCidr.fromMap(
              (map['islandModeCidr'] as Map).cast<String, dynamic>(),
            ),
      multipleNetworkInterfacesConfig:
          map['multipleNetworkInterfacesConfig'] == null
          ? null
          : BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap(
              (map['multipleNetworkInterfacesConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
