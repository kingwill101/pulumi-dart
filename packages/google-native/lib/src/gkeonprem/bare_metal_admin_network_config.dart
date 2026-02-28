// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_island_mode_cidr_config.dart';

/// BareMetalAdminNetworkConfig specifies the cluster network configuration.
class BareMetalAdminNetworkConfig {
  /// Configuration for Island mode CIDR.
  final BareMetalAdminIslandModeCidrConfig? islandModeCidr;

  /// Creates a new [BareMetalAdminNetworkConfig].
  /// [islandModeCidr] Configuration for Island mode CIDR.
  BareMetalAdminNetworkConfig({
    this.islandModeCidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final islandModeCidrValue = islandModeCidr;
    if (islandModeCidrValue != null) {
      map['islandModeCidr'] = islandModeCidrValue.toMap();
    }
    return map;
  }

  factory BareMetalAdminNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNetworkConfig(
      islandModeCidr: map['islandModeCidr'] == null
          ? null
          : BareMetalAdminIslandModeCidrConfig.fromMap(
              (map['islandModeCidr'] as Map).cast<String, dynamic>()),
    );
  }
}
