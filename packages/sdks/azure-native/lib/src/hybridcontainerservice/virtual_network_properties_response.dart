// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_infra_vnet_profile.dart';
import 'virtual_network_properties_response_status.dart';
import 'virtual_network_properties_response_vip_pool.dart';
import 'virtual_network_properties_response_vmip_pool.dart';

/// Properties of the virtual network resource
class VirtualNetworkPropertiesResponse {
  /// List of DNS server IP Addresses associated with the network
  final pulumi.Input<List<String>>? dnsServers;
  /// IP Address of the Gateway associated with the network
  final pulumi.Input<String>? gateway;
  final pulumi.Input<VirtualNetworkPropertiesResponseInfraVnetProfile>? infraVnetProfile;
  /// IP Address Prefix of the network
  final pulumi.Input<String>? ipAddressPrefix;
  final pulumi.Input<String> provisioningState;
  /// Status of the virtual network resource
  final pulumi.Input<VirtualNetworkPropertiesResponseStatus> status;
  /// Range of IP Addresses for Kubernetes API Server and services if using HA Proxy load balancer
  final pulumi.Input<List<VirtualNetworkPropertiesResponseVipPool>>? vipPool;
  /// VLAN Id used by the network
  final pulumi.Input<int>? vlanID;
  /// Range of IP Addresses for Kubernetes node VMs
  final pulumi.Input<List<VirtualNetworkPropertiesResponseVmipPool>>? vmipPool;

  /// Creates a new [VirtualNetworkPropertiesResponse].
  /// [dnsServers] List of DNS server IP Addresses associated with the network
  /// [gateway] IP Address of the Gateway associated with the network
  /// [infraVnetProfile] Optional.
  /// [ipAddressPrefix] IP Address Prefix of the network
  /// [provisioningState] Required.
  /// [status] Status of the virtual network resource
  /// [vipPool] Range of IP Addresses for Kubernetes API Server and services if using HA Proxy load balancer
  /// [vlanID] VLAN Id used by the network
  /// [vmipPool] Range of IP Addresses for Kubernetes node VMs
  const VirtualNetworkPropertiesResponse({
    this.dnsServers,
    this.gateway,
    this.infraVnetProfile,
    this.ipAddressPrefix,
    required this.provisioningState,
    required this.status,
    this.vipPool,
    this.vlanID,
    this.vmipPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'infraVnetProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesResponseInfraVnetProfile, Map<String, dynamic>>(infraVnetProfile, (value) => value.toMap()),
      'ipAddressPrefix': ?ipAddressPrefix,
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<VirtualNetworkPropertiesResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'vipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesResponseVipPool>, List<Map<String, dynamic>>>(vipPool, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesResponseVipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanID': ?vlanID,
      'vmipPool': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesResponseVmipPool>, List<Map<String, dynamic>>>(vmipPool, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesResponseVmipPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworkPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponse(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infraVnetProfile: (() { final guardedValue = map['infraVnetProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesResponseInfraVnetProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressPrefix: (() { final guardedValue = map['ipAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(VirtualNetworkPropertiesResponseStatus.fromMap((map['status']! as Map).cast<String, dynamic>())),
      vipPool: (() { final guardedValue = map['vipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesResponseVipPool>(guardedValue, (value) => VirtualNetworkPropertiesResponseVipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vlanID: (() { final guardedValue = map['vlanID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmipPool: (() { final guardedValue = map['vmipPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesResponseVmipPool>(guardedValue, (value) => VirtualNetworkPropertiesResponseVmipPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
