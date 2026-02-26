// ignore_for_file: unused_element, unnecessary_cast

import '../vmware_cluster_network_config_control_plane_v2_config/vmware_cluster_network_config_control_plane_v2_config.dart';
import '../vmware_cluster_network_config_dhcp_ip_config/vmware_cluster_network_config_dhcp_ip_config.dart';
import '../vmware_cluster_network_config_host_config/vmware_cluster_network_config_host_config.dart';
import '../vmware_cluster_network_config_static_ip_config/vmware_cluster_network_config_static_ip_config.dart';

class VMwareClusterNetworkConfig {
  /// Configuration for control plane V2 mode.
  /// Structure is documented below.
  final VMwareClusterNetworkConfigControlPlaneV2Config? controlPlaneV2Config;

  /// Configuration settings for a DHCP IP configuration.
  /// Structure is documented below.
  final VMwareClusterNetworkConfigDhcpIpConfig? dhcpIpConfig;

  /// Represents common network settings irrespective of the host's IP address.
  /// Structure is documented below.
  final VMwareClusterNetworkConfigHostConfig? hostConfig;

  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// Only a single range is supported. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address
  /// from these ranges. Only a single range is supported.. This field
  /// cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;

  /// Configuration settings for a static IP configuration.
  /// Structure is documented below.
  final VMwareClusterNetworkConfigStaticIpConfig? staticIpConfig;

  /// vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  final String? vcenterNetwork;

  VMwareClusterNetworkConfig({
    this.controlPlaneV2Config,
    this.dhcpIpConfig,
    this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneV2ConfigValue = controlPlaneV2Config;
    if (controlPlaneV2ConfigValue != null) {
      map['controlPlaneV2Config'] = controlPlaneV2ConfigValue.toMap();
    }
    final dhcpIpConfigValue = dhcpIpConfig;
    if (dhcpIpConfigValue != null) {
      map['dhcpIpConfig'] = dhcpIpConfigValue.toMap();
    }
    final hostConfigValue = hostConfig;
    if (hostConfigValue != null) {
      map['hostConfig'] = hostConfigValue.toMap();
    }
    map['podAddressCidrBlocks'] = podAddressCidrBlocks;
    map['serviceAddressCidrBlocks'] = serviceAddressCidrBlocks;
    final staticIpConfigValue = staticIpConfig;
    if (staticIpConfigValue != null) {
      map['staticIpConfig'] = staticIpConfigValue.toMap();
    }
    final vcenterNetworkValue = vcenterNetwork;
    if (vcenterNetworkValue != null) {
      map['vcenterNetwork'] = vcenterNetworkValue;
    }
    return map;
  }

  factory VMwareClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfig(
      controlPlaneV2Config: map['controlPlaneV2Config'] == null
          ? null
          : VMwareClusterNetworkConfigControlPlaneV2Config.fromMap(
              (map['controlPlaneV2Config'] as Map).cast<String, dynamic>()),
      dhcpIpConfig: map['dhcpIpConfig'] == null
          ? null
          : VMwareClusterNetworkConfigDhcpIpConfig.fromMap(
              (map['dhcpIpConfig'] as Map).cast<String, dynamic>()),
      hostConfig: map['hostConfig'] == null
          ? null
          : VMwareClusterNetworkConfigHostConfig.fromMap(
              (map['hostConfig'] as Map).cast<String, dynamic>()),
      podAddressCidrBlocks:
          (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks:
          (map['serviceAddressCidrBlocks'] as List).cast<String>(),
      staticIpConfig: map['staticIpConfig'] == null
          ? null
          : VMwareClusterNetworkConfigStaticIpConfig.fromMap(
              (map['staticIpConfig'] as Map).cast<String, dynamic>()),
      vcenterNetwork: map['vcenterNetwork'] == null
          ? null
          : map['vcenterNetwork'] as String,
    );
  }
}
