// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_island_mode_cidr_config_response.dart';

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfigResponse {
  /// Configuration for Island mode CIDR.
  final BareMetalAdminIslandModeCidrConfigResponse islandModeCidr;

  BareMetalAdminNetworkConfigResponse({
    required this.islandModeCidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['islandModeCidr'] = islandModeCidr.toMap();
    return map;
  }

  factory BareMetalAdminNetworkConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminNetworkConfigResponse(
      islandModeCidr: BareMetalAdminIslandModeCidrConfigResponse.fromMap(
          (map['islandModeCidr'] as Map).cast<String, dynamic>()),
    );
  }
}
