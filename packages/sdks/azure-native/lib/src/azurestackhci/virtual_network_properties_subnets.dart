// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_ip_configuration_references.dart';
import 'virtual_network_properties_route_table.dart';

/// Subnet subnet in a virtual network resource.
class VirtualNetworkPropertiesSubnets {
  /// Cidr for this subnet - IPv4, IPv6
  final pulumi.Input<String?>? addressPrefix;
  /// AddressPrefixes - List of address prefixes for the subnet.
  final pulumi.Input<List<String>?>? addressPrefixes;
  /// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  final pulumi.Input<dynamic>? ipAllocationMethod;
  /// IPConfigurationReferences - list of IPConfigurationReferences
  final pulumi.Input<List<VirtualNetworkPropertiesIpConfigurationReferences>?>? ipConfigurationReferences;
  /// Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// RouteTable for the subnet
  final pulumi.Input<VirtualNetworkPropertiesRouteTable?>? routeTable;
  /// Vlan to use for the subnet
  final pulumi.Input<int?>? vlan;

  /// Creates a new [VirtualNetworkPropertiesSubnets].
  /// [addressPrefix] Cidr for this subnet - IPv4, IPv6
  /// [addressPrefixes] AddressPrefixes - List of address prefixes for the subnet.
  /// [ipAllocationMethod] IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
  /// [ipConfigurationReferences] IPConfigurationReferences - list of IPConfigurationReferences
  /// [name] Name - The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routeTable] RouteTable for the subnet
  /// [vlan] Vlan to use for the subnet
  const VirtualNetworkPropertiesSubnets({
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
      'ipConfigurationReferences': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesIpConfigurationReferences>, List<Map<String, dynamic>>>(ipConfigurationReferences, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesIpConfigurationReferences, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesRouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'vlan': ?vlan,
    };
  }

  factory VirtualNetworkPropertiesSubnets.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesSubnets(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAllocationMethod: (() { final guardedValue = map['ipAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipConfigurationReferences: (() { final guardedValue = map['ipConfigurationReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesIpConfigurationReferences>(guardedValue, (value) => VirtualNetworkPropertiesIpConfigurationReferences.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesRouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
