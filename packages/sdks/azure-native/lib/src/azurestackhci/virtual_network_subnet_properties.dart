// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_arm_reference.dart';
import 'network_security_group_arm_reference.dart';
import 'route_table.dart';

/// VirtualNetwork subnet resource
class VirtualNetworkSubnetProperties {
  /// Subnet CIDR
  final pulumi.Input<String> addressPrefix;
  /// Nat Gateway attached to the subnet for non-vnet traffic.
  final pulumi.Input<NatGatewayArmReference?>? natGateway;
  /// Network Security Group attached to the subnet.
  final pulumi.Input<NetworkSecurityGroupArmReference?>? networkSecurityGroup;
  /// RouteTable defining custom routes for the subnet.
  final pulumi.Input<RouteTable?>? routeTable;

  /// Creates a new [VirtualNetworkSubnetProperties].
  /// [addressPrefix] Subnet CIDR
  /// [natGateway] Nat Gateway attached to the subnet for non-vnet traffic.
  /// [networkSecurityGroup] Network Security Group attached to the subnet.
  /// [routeTable] RouteTable defining custom routes for the subnet.
  const VirtualNetworkSubnetProperties({
    required this.addressPrefix,
    this.natGateway,
    this.networkSecurityGroup,
    this.routeTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<NatGatewayArmReference, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupArmReference, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkSubnetProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetProperties(
      addressPrefix: pulumi.Input.fromValue(map['addressPrefix'] as String),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayArmReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupArmReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
