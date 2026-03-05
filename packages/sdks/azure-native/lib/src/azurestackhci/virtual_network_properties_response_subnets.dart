// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_ip_configuration_references.dart';
import 'virtual_network_properties_response_route_table.dart';

/// Subnet subnet in a virtual network resource.
class VirtualNetworkPropertiesResponseSubnets {
  /// Cidr for this subnet - IPv4, IPv6
  final pulumi.Input<String>? addressPrefix;
  /// AddressPrefixes - List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final pulumi.Input<String>? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final pulumi.Input<List<VirtualNetworkPropertiesResponseIpConfigurationReferences>>? ipConfigurationReferences;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// RouteTable for the subnet
  final pulumi.Input<VirtualNetworkPropertiesResponseRouteTable>? routeTable;
  /// Vlan to use for the subnet
  final pulumi.Input<int>? vlan;

  /// Creates a new [VirtualNetworkPropertiesResponseSubnets].
  /// [addressPrefix] Cidr for this subnet - IPv4, IPv6
  /// [addressPrefixes] AddressPrefixes - List of address prefixes for the subnet.
  /// [ipAllocationMethod] IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  /// [ipConfigurationReferences] IPConfigurationReferences - list of IPConfigurationReferences
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routeTable] RouteTable for the subnet
  /// [vlan] Vlan to use for the subnet
  VirtualNetworkPropertiesResponseSubnets({
    this.addressPrefix,
    this.addressPrefixes,
    this.ipAllocationMethod,
    this.ipConfigurationReferences,
    this.name,
    this.routeTable,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'ipAllocationMethod': ?ipAllocationMethod,
      'ipConfigurationReferences': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesResponseIpConfigurationReferences>, List<Map<String, dynamic>>>(ipConfigurationReferences, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesResponseIpConfigurationReferences, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesResponseRouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'vlan': ?vlan,
    };
  }

  factory VirtualNetworkPropertiesResponseSubnets.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseSubnets(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAllocationMethod: (() { final guardedValue = map['ipAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurationReferences: (() { final guardedValue = map['ipConfigurationReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesResponseIpConfigurationReferences>(guardedValue, (value) => VirtualNetworkPropertiesResponseIpConfigurationReferences.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesResponseRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

