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
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationCidrblock,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nexthopId,
    pulumi.Output<String>? nexthopType,
    required pulumi.Output<String> routeTableId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationCidrblock = pulumi.Input.asOptionalInput<String>(destinationCidrblock),
      name = pulumi.Input.asOptionalInput<String>(name),
      nexthopId = pulumi.Input.asOptionalInput<String>(nexthopId),
      nexthopType = pulumi.Input.asOptionalInput<String>(nexthopType),
      routeTableId = pulumi.Input.asInput<String>(routeTableId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationCidrblock: map['destinationCidrblock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrblock'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nexthopId: map['nexthopId'] == null ? null : pulumi.Output.create<String>(map['nexthopId'] as String),
      nexthopType: map['nexthopType'] == null ? null : pulumi.Output.create<String>(map['nexthopType'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
    );
  }
}

