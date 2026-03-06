// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_infra_vnet_profile.dart';
import 'virtual_networks_properties_vip_pool.dart';
import 'virtual_networks_properties_vmip_pool.dart';

/// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
class VirtualNetworksProperties {
  /// Address of the DNS servers associated with the network
  final pulumi.Input<List<String>>? dnsServers;
  /// Address of the Gateway associated with the network
  final pulumi.Input<String>? gateway;
  final pulumi.Input<VirtualNetworksPropertiesInfraVnetProfile>? infraVnetProfile;
  /// IP Address Prefix of the network
  final pulumi.Input<String>? ipAddressPrefix;
  /// Virtual IP Pool for Kubernetes
  final pulumi.Input<List<VirtualNetworksPropertiesVipPool>>? vipPool;
  /// IP Pool for Virtual Machines
  final pulumi.Input<List<VirtualNetworksPropertiesVmipPool>>? vmipPool;

  /// Creates a new [VirtualNetworksProperties].
  /// [dnsServers] Address of the DNS servers associated with the network
  /// [gateway] Address of the Gateway associated with the network
  /// [infraVnetProfile] Optional.
  /// [ipAddressPrefix] IP Address Prefix of the network
  /// [vipPool] Virtual IP Pool for Kubernetes
  /// [vmipPool] IP Pool for Virtual Machines
  const VirtualNetworksProperties({
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
      'infraVnetProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesInfraVnetProfile, Map<String, dynamic>>(infraVnetProfile, (value) => value.toMap()),
      'ipAddressPrefix': ?ipAddressPrefix,
      'vipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworksPropertiesVipPool>, List<Map<String, dynamic>>>(vipPool, (value) => pulumi.Input.encodeList<VirtualNetworksPropertiesVipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworksPropertiesVmipPool>, List<Map<String, dynamic>>>(vmipPool, (value) => pulumi.Input.encodeList<VirtualNetworksPropertiesVmipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworksProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksProperties(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infraVnetProfile: (() { final guardedValue = map['infraVnetProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksPropertiesInfraVnetProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressPrefix: (() { final guardedValue = map['ipAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vipPool: (() { final guardedValue = map['vipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworksPropertiesVipPool>(guardedValue, (value) => VirtualNetworksPropertiesVipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmipPool: (() { final guardedValue = map['vmipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworksPropertiesVmipPool>(guardedValue, (value) => VirtualNetworksPropertiesVmipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

