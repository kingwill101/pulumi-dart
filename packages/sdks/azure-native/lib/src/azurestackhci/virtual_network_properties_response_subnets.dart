// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_ip_configuration_references.dart';
import 'virtual_network_properties_response_route_table.dart';

/// Subnet subnet in a virtual network resource.
class VirtualNetworkPropertiesResponseSubnets {
  /// Cidr for this subnet - IPv4, IPv6
  final String? addressPrefix;
  /// AddressPrefixes - List of address prefixes for the subnet.
  final List<String>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final String? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final List<VirtualNetworkPropertiesResponseIpConfigurationReferences>? ipConfigurationReferences;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// RouteTable for the subnet
  final VirtualNetworkPropertiesResponseRouteTable? routeTable;
  /// Vlan to use for the subnet
  final int? vlan;

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
      'ipConfigurationReferences': ?ipConfigurationReferences == null ? null : pulumi.Input.encodeList<VirtualNetworkPropertiesResponseIpConfigurationReferences, Map<String, dynamic>>(ipConfigurationReferences!, (value) => value.toMap()),
      'name': ?name,
      'routeTable': ?routeTable == null ? null : routeTable!.toMap(),
      'vlan': ?vlan,
    };
  }

  factory VirtualNetworkPropertiesResponseSubnets.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseSubnets(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      ipAllocationMethod: map['ipAllocationMethod'] == null ? null : map['ipAllocationMethod'] as String,
      ipConfigurationReferences: map['ipConfigurationReferences'] == null ? null : pulumi.Input.decodeList<VirtualNetworkPropertiesResponseIpConfigurationReferences>(map['ipConfigurationReferences'], (value) => VirtualNetworkPropertiesResponseIpConfigurationReferences.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      routeTable: map['routeTable'] == null ? null : VirtualNetworkPropertiesResponseRouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>()),
      vlan: map['vlan'] == null ? null : map['vlan'] as int,
    );
  }
}

