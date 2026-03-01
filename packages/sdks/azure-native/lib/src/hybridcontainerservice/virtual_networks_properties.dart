// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_infra_vnet_profile.dart';
import 'virtual_networks_properties_vip_pool.dart';
import 'virtual_networks_properties_vmip_pool.dart';

/// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
class VirtualNetworksProperties {
  /// Address of the DNS servers associated with the network
  final List<String>? dnsServers;
  /// Address of the Gateway associated with the network
  final String? gateway;
  final VirtualNetworksPropertiesInfraVnetProfile? infraVnetProfile;
  /// IP Address Prefix of the network
  final String? ipAddressPrefix;
  /// Virtual IP Pool for Kubernetes
  final List<VirtualNetworksPropertiesVipPool>? vipPool;
  /// IP Pool for Virtual Machines
  final List<VirtualNetworksPropertiesVmipPool>? vmipPool;

  /// Creates a new [VirtualNetworksProperties].
  /// [dnsServers] Address of the DNS servers associated with the network
  /// [gateway] Address of the Gateway associated with the network
  /// [infraVnetProfile] Optional.
  /// [ipAddressPrefix] IP Address Prefix of the network
  /// [vipPool] Virtual IP Pool for Kubernetes
  /// [vmipPool] IP Pool for Virtual Machines
  VirtualNetworksProperties({
    this.dnsServers,
    this.gateway,
    this.infraVnetProfile,
    this.ipAddressPrefix,
    this.vipPool,
    this.vmipPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'infraVnetProfile': ?infraVnetProfile == null ? null : infraVnetProfile!.toMap(),
      'ipAddressPrefix': ?ipAddressPrefix,
      'vipPool': ?vipPool == null ? null : pulumi.Input.encodeList<VirtualNetworksPropertiesVipPool, Map<String, dynamic>>(vipPool!, (value) => value.toMap()),
      'vmipPool': ?vmipPool == null ? null : pulumi.Input.encodeList<VirtualNetworksPropertiesVmipPool, Map<String, dynamic>>(vmipPool!, (value) => value.toMap()),
    };
  }

  factory VirtualNetworksProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksProperties(
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      gateway: map['gateway'] == null ? null : map['gateway'] as String,
      infraVnetProfile: map['infraVnetProfile'] == null ? null : VirtualNetworksPropertiesInfraVnetProfile.fromMap((map['infraVnetProfile'] as Map).cast<String, dynamic>()),
      ipAddressPrefix: map['ipAddressPrefix'] == null ? null : map['ipAddressPrefix'] as String,
      vipPool: map['vipPool'] == null ? null : pulumi.Input.decodeList<VirtualNetworksPropertiesVipPool>(map['vipPool'], (value) => VirtualNetworksPropertiesVipPool.fromMap((value as Map).cast<String, dynamic>())),
      vmipPool: map['vmipPool'] == null ? null : pulumi.Input.decodeList<VirtualNetworksPropertiesVmipPool>(map['vmipPool'], (value) => VirtualNetworksPropertiesVmipPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

