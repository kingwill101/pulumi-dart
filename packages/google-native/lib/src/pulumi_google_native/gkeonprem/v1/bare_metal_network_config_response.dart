// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_island_mode_cidr_config_response.dart';
import 'bare_metal_multiple_network_interfaces_config_response.dart';
import 'bare_metal_sr_iov_config_response.dart';

/// Specifies the cluster network configuration.
class BareMetalNetworkConfigResponse {
  /// Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  final bool advancedNetworking;

  /// Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  final BareMetalIslandModeCidrConfigResponse islandModeCidr;

  /// Configuration for multiple network interfaces.
  final BareMetalMultipleNetworkInterfacesConfigResponse
      multipleNetworkInterfacesConfig;

  /// Configuration for SR-IOV.
  final BareMetalSrIovConfigResponse srIovConfig;

  BareMetalNetworkConfigResponse({
    required this.advancedNetworking,
    required this.islandModeCidr,
    required this.multipleNetworkInterfacesConfig,
    required this.srIovConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedNetworking'] = advancedNetworking;
    map['islandModeCidr'] = islandModeCidr.toMap();
    map['multipleNetworkInterfacesConfig'] =
        multipleNetworkInterfacesConfig.toMap();
    map['srIovConfig'] = srIovConfig.toMap();
    return map;
  }

  factory BareMetalNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNetworkConfigResponse(
      advancedNetworking: map['advancedNetworking'] as bool,
      islandModeCidr: BareMetalIslandModeCidrConfigResponse.fromMap(
          (map['islandModeCidr'] as Map).cast<String, dynamic>()),
      multipleNetworkInterfacesConfig:
          BareMetalMultipleNetworkInterfacesConfigResponse.fromMap(
              (map['multipleNetworkInterfacesConfig'] as Map)
                  .cast<String, dynamic>()),
      srIovConfig: BareMetalSrIovConfigResponse.fromMap(
          (map['srIovConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
