// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_infra_vnet_profile.dart';
import 'virtual_network_properties_vip_pool.dart';
import 'virtual_network_properties_vmip_pool.dart';

/// Properties of the virtual network resource
class VirtualNetworkProperties {
  /// List of DNS server IP Addresses associated with the network
  final pulumi.Input<List<String>>? dnsServers;
  /// IP Address of the Gateway associated with the network
  final pulumi.Input<String>? gateway;
  final pulumi.Input<VirtualNetworkPropertiesInfraVnetProfile>? infraVnetProfile;
  /// IP Address Prefix of the network
  final pulumi.Input<String>? ipAddressPrefix;
  /// Range of IP Addresses for Kubernetes API Server and services if using HA Proxy load balancer
  final pulumi.Input<List<VirtualNetworkPropertiesVipPool>>? vipPool;
  /// VLAN Id used by the network
  final pulumi.Input<int>? vlanID;
  /// Range of IP Addresses for Kubernetes node VMs
  final pulumi.Input<List<VirtualNetworkPropertiesVmipPool>>? vmipPool;

  /// Creates a new [VirtualNetworkProperties].
  /// [dnsServers] List of DNS server IP Addresses associated with the network
  /// [gateway] IP Address of the Gateway associated with the network
  /// [infraVnetProfile] Optional.
  /// [ipAddressPrefix] IP Address Prefix of the network
  /// [vipPool] Range of IP Addresses for Kubernetes API Server and services if using HA Proxy load balancer
  /// [vlanID] VLAN Id used by the network
  /// [vmipPool] Range of IP Addresses for Kubernetes node VMs
  const VirtualNetworkProperties({
    this.dnsServers,
    this.gateway,
    this.infraVnetProfile,
    this.ipAddressPrefix,
    this.vipPool,
    this.vlanID,
    this.vmipPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'infraVnetProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesInfraVnetProfile, Map<String, dynamic>>(infraVnetProfile, (value) => value.toMap()),
      'ipAddressPrefix': ?ipAddressPrefix,
      'vipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesVipPool>, List<Map<String, dynamic>>>(vipPool, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesVipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanID': ?vlanID,
      'vmipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesVmipPool>, List<Map<String, dynamic>>>(vmipPool, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesVmipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworkProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProperties(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infraVnetProfile: (() { final guardedValue = map['infraVnetProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesInfraVnetProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressPrefix: (() { final guardedValue = map['ipAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vipPool: (() { final guardedValue = map['vipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesVipPool>(guardedValue, (value) => VirtualNetworkPropertiesVipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vlanID: (() { final guardedValue = map['vlanID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmipPool: (() { final guardedValue = map['vmipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesVmipPool>(guardedValue, (value) => VirtualNetworkPropertiesVmipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
