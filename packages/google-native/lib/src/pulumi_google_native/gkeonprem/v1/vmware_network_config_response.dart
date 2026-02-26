// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_control_plane_v2_config_response.dart';
import 'vmware_dhcp_ip_config_response.dart';
import 'vmware_host_config_response.dart';
import 'vmware_static_ip_config_response.dart';

/// Specifies network config for the VMware user cluster.
class VmwareNetworkConfigResponse {
  /// Configuration for control plane V2 mode.
  final VmwareControlPlaneV2ConfigResponse controlPlaneV2Config;

  /// Configuration settings for a DHCP IP configuration.
  final VmwareDhcpIpConfigResponse dhcpIpConfig;

  /// Represents common network settings irrespective of the host's IP address.
  final VmwareHostConfigResponse hostConfig;

  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;

  /// Configuration settings for a static IP configuration.
  final VmwareStaticIpConfigResponse staticIpConfig;

  /// vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  final String vcenterNetwork;

  VmwareNetworkConfigResponse({
    required this.controlPlaneV2Config,
    required this.dhcpIpConfig,
    required this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.staticIpConfig,
    required this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneV2Config'] = controlPlaneV2Config.toMap();
    map['dhcpIpConfig'] = dhcpIpConfig.toMap();
    map['hostConfig'] = hostConfig.toMap();
    map['podAddressCidrBlocks'] = podAddressCidrBlocks;
    map['serviceAddressCidrBlocks'] = serviceAddressCidrBlocks;
    map['staticIpConfig'] = staticIpConfig.toMap();
    map['vcenterNetwork'] = vcenterNetwork;
    return map;
  }

  factory VmwareNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareNetworkConfigResponse(
      controlPlaneV2Config: VmwareControlPlaneV2ConfigResponse.fromMap(
          (map['controlPlaneV2Config'] as Map).cast<String, dynamic>()),
      dhcpIpConfig: VmwareDhcpIpConfigResponse.fromMap(
          (map['dhcpIpConfig'] as Map).cast<String, dynamic>()),
      hostConfig: VmwareHostConfigResponse.fromMap(
          (map['hostConfig'] as Map).cast<String, dynamic>()),
      podAddressCidrBlocks:
          (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks:
          (map['serviceAddressCidrBlocks'] as List).cast<String>(),
      staticIpConfig: VmwareStaticIpConfigResponse.fromMap(
          (map['staticIpConfig'] as Map).cast<String, dynamic>()),
      vcenterNetwork: map['vcenterNetwork'] as String,
    );
  }
}
