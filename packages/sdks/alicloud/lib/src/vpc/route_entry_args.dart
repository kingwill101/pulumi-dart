// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_route_entry_route_entry_args_doc}
/// The set of arguments for RouteEntry.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_entry_route_entry_args_doc}
class RouteEntryArgs {
  /// The description of the Route Entry. The description must be `1` to `256` characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The destination CIDR block of the custom route entry.
  final pulumi.Input<String>? destinationCidrblock;
  /// The name of the Route Entry. The name must be `1` to `128` characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? name;
  /// The ID of Next Hop.
  final pulumi.Input<String>? nexthopId;
  /// The type of Next Hop. Valid values:
  /// - `Instance`: An Elastic Compute Service (ECS) instance.
  /// - `HaVip`: A high-availability virtual IP address (HAVIP).
  /// - `RouterInterface`: A router interface.
  /// - `NetworkInterface`: An elastic network interface (ENI).
  /// - `VpnGateway`: A VPN Gateway.
  /// - `IPv6Gateway`: An IPv6 gateway.
  /// - `NatGateway`: A Nat Gateway.
  /// - `Attachment`: A transit router.
  /// - `VpcPeer`: A VPC Peering Connection.
  /// - `Ipv4Gateway`: An IPv4 gateway.
  /// - `GatewayEndpoint`: A gateway endpoint.
  /// - `Ecr`: A Express Connect Router (ECR).
  final pulumi.Input<String>? nexthopType;
  /// The ID of the Route Table.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [RouteEntryArgs].
  /// [description] The description of the Route Entry. The description must be `1` to `256` characters in length, and cannot start with `http://` or `https://`.
  /// [destinationCidrblock] The destination CIDR block of the custom route entry.
  /// [name] The name of the Route Entry. The name must be `1` to `128` characters in length, and cannot start with `http://` or `https://`.
  /// [nexthopId] The ID of Next Hop.
  /// [nexthopType] The type of Next Hop. Valid values:
  /// [routeTableId] The ID of the Route Table.
  RouteEntryArgs({
    this.description,
    this.destinationCidrblock,
    this.name,
    this.nexthopId,
    this.nexthopType,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrblock': ?destinationCidrblock,
      'name': ?name,
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'routeTableId': routeTableId,
    };
  }

  factory RouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return RouteEntryArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationCidrblock: map['destinationCidrblock'] == null ? null : (map['destinationCidrblock'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nexthopId: map['nexthopId'] == null ? null : (map['nexthopId'] as String).input(),
      nexthopType: map['nexthopType'] == null ? null : (map['nexthopType'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
    );
  }
}

