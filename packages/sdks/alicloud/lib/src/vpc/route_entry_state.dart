// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteEntry resources.
class RouteEntryState {
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
  final pulumi.Input<String>? routeTableId;

  /// This argument has been deprecated. Please use other arguments to launch a custom route entry.
  final pulumi.Input<String>? routerId;

  /// Creates a new [RouteEntryState].
  /// [description] The description of the Route Entry. The description must be `1` to `256` characters in length, and cannot start with `http://` or `https://`.
  /// [destinationCidrblock] The destination CIDR block of the custom route entry.
  /// [name] The name of the Route Entry. The name must be `1` to `128` characters in length, and cannot start with `http://` or `https://`.
  /// [nexthopId] The ID of Next Hop.
  /// [nexthopType] The type of Next Hop. Valid values:
  /// [routeTableId] The ID of the Route Table.
  /// [routerId] This argument has been deprecated. Please use other arguments to launch a custom route entry.
  RouteEntryState({
    this.description,
    this.destinationCidrblock,
    this.name,
    this.nexthopId,
    this.nexthopType,
    this.routeTableId,
    this.routerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrblock': ?destinationCidrblock,
      'name': ?name,
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'routeTableId': ?routeTableId,
      'routerId': ?routerId,
    };
  }

  factory RouteEntryState.fromMap(Map<String, dynamic> map) {
    return RouteEntryState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationCidrblock: (() {
        final guardedValue = map['destinationCidrblock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nexthopId: (() {
        final guardedValue = map['nexthopId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nexthopType: (() {
        final guardedValue = map['nexthopType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeTableId: (() {
        final guardedValue = map['routeTableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routerId: (() {
        final guardedValue = map['routerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
