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
    return map;
  }

  factory BareMetalAdminClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNetworkConfig(
      advancedNetworking: map['advancedNetworking'] == null
          ? null
          : map['advancedNetworking'] as bool,
      islandModeCidr: map['islandModeCidr'] == null
          ? null
          : BareMetalAdminClusterNetworkConfigIslandModeCidr.fromMap(
              (map['islandModeCidr'] as Map).cast<String, dynamic>()),
      multipleNetworkInterfacesConfig: map['multipleNetworkInterfacesConfig'] ==
              null
          ? null
          : BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig
              .fromMap((map['multipleNetworkInterfacesConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
