// ignore_for_file: unused_element, unnecessary_cast

import 'nat_gateway_arm_reference.dart';
import 'network_security_group_arm_reference.dart';
import 'route_table.dart';

/// VirtualNetwork subnet resource
class VirtualNetworkSubnetProperties {
  /// Subnet CIDR
  final String addressPrefix;
  /// Nat Gateway attached to the subnet for non-vnet traffic.
  final NatGatewayArmReference? natGateway;
  /// Network Security Group attached to the subnet.
  final NetworkSecurityGroupArmReference? networkSecurityGroup;
  /// RouteTable defining custom routes for the subnet.
  final RouteTable? routeTable;

  /// Creates a new [VirtualNetworkSubnetProperties].
  /// [addressPrefix] Subnet CIDR
  /// [natGateway] Nat Gateway attached to the subnet for non-vnet traffic.
  /// [networkSecurityGroup] Network Security Group attached to the subnet.
  /// [routeTable] RouteTable defining custom routes for the subnet.
  VirtualNetworkSubnetProperties({
    required this.addressPrefix,
    this.natGateway,
    this.networkSecurityGroup,
    this.routeTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
      'routeTable': ?routeTable == null ? null : routeTable!.toMap(),
    };
  }

  factory VirtualNetworkSubnetProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetProperties(
      addressPrefix: map['addressPrefix'] as String,
      natGateway: map['natGateway'] == null ? null : NatGatewayArmReference.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NetworkSecurityGroupArmReference.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
      routeTable: map['routeTable'] == null ? null : RouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>()),
    );
  }
}

