// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_response_infra_vnet_profile.dart';
import 'virtual_networks_properties_response_status.dart';
import 'virtual_networks_properties_response_vip_pool.dart';
import 'virtual_networks_properties_response_vmip_pool.dart';

/// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
class VirtualNetworksPropertiesResponse {
  /// Address of the DHCP servers associated with the network
  final List<String> dhcpServers;
  /// Address of the DNS servers associated with the network
  final List<String>? dnsServers;
  /// Address of the Gateway associated with the network
  final String? gateway;
  final VirtualNetworksPropertiesResponseInfraVnetProfile? infraVnetProfile;
  /// IP Address Prefix of the network
  final String? ipAddressPrefix;
  final String provisioningState;
  /// HybridAKSNetworkStatus defines the observed state of HybridAKSNetwork
  final VirtualNetworksPropertiesResponseStatus status;
  /// Virtual IP Pool for Kubernetes
  final List<VirtualNetworksPropertiesResponseVipPool>? vipPool;
  /// VLAN Id used by the network
  final String vlanID;
  /// IP Pool for Virtual Machines
  final List<VirtualNetworksPropertiesResponseVmipPool>? vmipPool;

  /// Creates a new [VirtualNetworksPropertiesResponse].
  /// [dhcpServers] Address of the DHCP servers associated with the network
  /// [dnsServers] Address of the DNS servers associated with the network
  /// [gateway] Address of the Gateway associated with the network
  /// [infraVnetProfile] Optional.
  /// [ipAddressPrefix] IP Address Prefix of the network
  /// [provisioningState] Required.
  /// [status] HybridAKSNetworkStatus defines the observed state of HybridAKSNetwork
  /// [vipPool] Virtual IP Pool for Kubernetes
  /// [vlanID] VLAN Id used by the network
  /// [vmipPool] IP Pool for Virtual Machines
  VirtualNetworksPropertiesResponse({
    required this.dhcpServers,
    this.dnsServers,
    this.gateway,
    this.infraVnetProfile,
    this.ipAddressPrefix,
    required this.provisioningState,
    required this.status,
    this.vipPool,
    required this.vlanID,
    this.vmipPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpServers': dhcpServers,
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'infraVnetProfile': ?infraVnetProfile == null ? null : infraVnetProfile!.toMap(),
      'ipAddressPrefix': ?ipAddressPrefix,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'vipPool': ?vipPool == null ? null : pulumi.Input.encodeList<VirtualNetworksPropertiesResponseVipPool, Map<String, dynamic>>(vipPool!, (value) => value.toMap()),
      'vlanID': vlanID,
      'vmipPool': ?vmipPool == null ? null : pulumi.Input.encodeList<VirtualNetworksPropertiesResponseVmipPool, Map<String, dynamic>>(vmipPool!, (value) => value.toMap()),
    };
  }

  factory VirtualNetworksPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponse(
      dhcpServers: (map['dhcpServers'] as List).cast<String>(),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      infraVnetProfile: map['infraVnetProfile'] == null ? null : VirtualNetworksPropertiesResponseInfraVnetProfile.fromMap((map['infraVnetProfile'] as Map).cast<String, dynamic>()),
      ipAddressPrefix: map['ipAddressPrefix'] == null ? null : map['ipAddressPrefix'] as String,
      provisioningState: map['provisioningState'] as String,
      status: VirtualNetworksPropertiesResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      vipPool: map['vipPool'] == null ? null : pulumi.Input.decodeList<VirtualNetworksPropertiesResponseVipPool>(map['vipPool'], (value) => VirtualNetworksPropertiesResponseVipPool.fromMap((value as Map).cast<String, dynamic>())),
      vlanID: map['vlanID'] as String,
      vmipPool: map['vmipPool'] == null ? null : pulumi.Input.decodeList<VirtualNetworksPropertiesResponseVmipPool>(map['vmipPool'], (value) => VirtualNetworksPropertiesResponseVmipPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

