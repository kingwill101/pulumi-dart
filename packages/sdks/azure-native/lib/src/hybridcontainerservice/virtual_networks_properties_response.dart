// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_response_infra_vnet_profile.dart';
import 'virtual_networks_properties_response_status.dart';
import 'virtual_networks_properties_response_vip_pool.dart';
import 'virtual_networks_properties_response_vmip_pool.dart';

/// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
class VirtualNetworksPropertiesResponse {
  /// Address of the DHCP servers associated with the network
  final pulumi.Input<List<String>> dhcpServers;
  /// Address of the DNS servers associated with the network
  final pulumi.Input<List<String>>? dnsServers;
  /// Address of the Gateway associated with the network
  final pulumi.Input<String>? gateway;
  final pulumi.Input<VirtualNetworksPropertiesResponseInfraVnetProfile>? infraVnetProfile;
  /// IP Address Prefix of the network
  final pulumi.Input<String>? ipAddressPrefix;
  final pulumi.Input<String> provisioningState;
  /// HybridAKSNetworkStatus defines the observed state of HybridAKSNetwork
  final pulumi.Input<VirtualNetworksPropertiesResponseStatus> status;
  /// Virtual IP Pool for Kubernetes
  final pulumi.Input<List<VirtualNetworksPropertiesResponseVipPool>>? vipPool;
  /// VLAN Id used by the network
  final pulumi.Input<String> vlanID;
  /// IP Pool for Virtual Machines
  final pulumi.Input<List<VirtualNetworksPropertiesResponseVmipPool>>? vmipPool;

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
      'infraVnetProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesResponseInfraVnetProfile, Map<String, dynamic>>(infraVnetProfile, (value) => value.toMap()),
      'ipAddressPrefix': ?ipAddressPrefix,
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<VirtualNetworksPropertiesResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'vipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworksPropertiesResponseVipPool>, List<Map<String, dynamic>>>(vipPool, (value) => pulumi.Input.encodeList<VirtualNetworksPropertiesResponseVipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanID': vlanID,
      'vmipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworksPropertiesResponseVmipPool>, List<Map<String, dynamic>>>(vmipPool, (value) => pulumi.Input.encodeList<VirtualNetworksPropertiesResponseVmipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworksPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponse(
      dhcpServers: ((map['dhcpServers'] as List).cast<String>()).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as String).input(),
      infraVnetProfile: map['infraVnetProfile'] == null ? null : (VirtualNetworksPropertiesResponseInfraVnetProfile.fromMap((map['infraVnetProfile'] as Map).cast<String, dynamic>())).input(),
      ipAddressPrefix: map['ipAddressPrefix'] == null ? null : (map['ipAddressPrefix'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (VirtualNetworksPropertiesResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      vipPool: map['vipPool'] == null ? null : (pulumi.Input.decodeList<VirtualNetworksPropertiesResponseVipPool>(map['vipPool'], (value) => VirtualNetworksPropertiesResponseVipPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vlanID: (map['vlanID'] as String).input(),
      vmipPool: map['vmipPool'] == null ? null : (pulumi.Input.decodeList<VirtualNetworksPropertiesResponseVmipPool>(map['vmipPool'], (value) => VirtualNetworksPropertiesResponseVmipPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

