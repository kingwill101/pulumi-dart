// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_island_mode_cidr_config_response.dart';

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfigResponse {
  /// Configuration for Island mode CIDR.
  final BareMetalAdminIslandModeCidrConfigResponse islandModeCidr;

  /// Creates a new [BareMetalAdminNetworkConfigResponse].
  /// [islandModeCidr] Configuration for Island mode CIDR.
  BareMetalAdminNetworkConfigResponse({
    required this.islandModeCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'islandModeCidr': islandModeCidr.toMap(),
    };
  }

  factory BareMetalAdminNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNetworkConfigResponse(
      islandModeCidr: BareMetalAdminIslandModeCidrConfigResponse.fromMap((map['islandModeCidr'] as Map).cast<String, dynamic>()),
    );
  }
}

