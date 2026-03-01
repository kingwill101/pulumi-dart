// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_admin_cluster_network_config_dhcp_ip_config.dart';
import 'vmware_admin_cluster_network_config_ha_control_plane_config.dart';
import 'vmware_admin_cluster_network_config_host_config.dart';
import 'vmware_admin_cluster_network_config_static_ip_config.dart';

class VmwareAdminClusterNetworkConfig {
  /// Configuration settings for a DHCP IP configuration.
  /// Structure is documented below.
  final VmwareAdminClusterNetworkConfigDhcpIpConfig? dhcpIpConfig;

  /// Configuration for HA admin cluster control plane.
  /// Structure is documented below.
  final VmwareAdminClusterNetworkConfigHaControlPlaneConfig?
  haControlPlaneConfig;

  /// Represents common network settings irrespective of the host's IP address.
  /// Structure is documented below.
  final VmwareAdminClusterNetworkConfigHostConfig? hostConfig;

  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// Only a single range is supported. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address
  /// from these ranges. Only a single range is supported.. This field
  /// cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;

  /// Configuration settings for a static IP configuration.
  /// Structure is documented below.
  final VmwareAdminClusterNetworkConfigStaticIpConfig? staticIpConfig;

  /// vcenter_network specifies vCenter network name.
  final String? vcenterNetwork;

  /// Creates a new [VmwareAdminClusterNetworkConfig].
  /// [dhcpIpConfig] Configuration settings for a DHCP IP configuration.
  /// [haControlPlaneConfig] Configuration for HA admin cluster control plane.
  /// [hostConfig] Represents common network settings irrespective of the host's IP address.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address
  /// [staticIpConfig] Configuration settings for a static IP configuration.
  /// [vcenterNetwork] vcenter_network specifies vCenter network name.
  VmwareAdminClusterNetworkConfig({
    this.dhcpIpConfig,
    this.haControlPlaneConfig,
    this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpIpConfig': ?dhcpIpConfig == null ? null : dhcpIpConfig!.toMap(),
      'haControlPlaneConfig': ?haControlPlaneConfig == null
          ? null
          : haControlPlaneConfig!.toMap(),
      'hostConfig': ?hostConfig == null ? null : hostConfig!.toMap(),
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'staticIpConfig': ?staticIpConfig == null
          ? null
          : staticIpConfig!.toMap(),
      'vcenterNetwork': ?vcenterNetwork,
    };
  }

  factory VmwareAdminClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfig(
      dhcpIpConfig: map['dhcpIpConfig'] == null
          ? null
          : VmwareAdminClusterNetworkConfigDhcpIpConfig.fromMap(
              (map['dhcpIpConfig'] as Map).cast<String, dynamic>(),
            ),
      haControlPlaneConfig: map['haControlPlaneConfig'] == null
          ? null
          : VmwareAdminClusterNetworkConfigHaControlPlaneConfig.fromMap(
              (map['haControlPlaneConfig'] as Map).cast<String, dynamic>(),
            ),
      hostConfig: map['hostConfig'] == null
          ? null
          : VmwareAdminClusterNetworkConfigHostConfig.fromMap(
              (map['hostConfig'] as Map).cast<String, dynamic>(),
            ),
      podAddressCidrBlocks: (map['podAddressCidrBlocks'] as List)
          .cast<String>(),
      serviceAddressCidrBlocks: (map['serviceAddressCidrBlocks'] as List)
          .cast<String>(),
      staticIpConfig: map['staticIpConfig'] == null
          ? null
          : VmwareAdminClusterNetworkConfigStaticIpConfig.fromMap(
              (map['staticIpConfig'] as Map).cast<String, dynamic>(),
            ),
      vcenterNetwork: map['vcenterNetwork'] == null
          ? null
          : map['vcenterNetwork'] as String,
    );
  }
}
