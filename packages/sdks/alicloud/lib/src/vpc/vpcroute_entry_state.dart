// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpcroute_entry_next_hop.dart';
import 'vpcroute_entry_route_publish_target.dart';

/// Input properties used for looking up and filtering VPCRouteEntry resources.
class VPCRouteEntryState {
  /// Description of the route entry.
  final pulumi.Input<String>? description;
  /// The destination network segment of the routing entry.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Next jump See `next_hops` below.
  final pulumi.Input<List<VPCRouteEntryNextHop>>? nextHops;
  /// The ID of the next hop instance of the custom route entry.
  final pulumi.Input<String>? nexthopId;
  /// The type of the next hop of the custom route entry. Valid values:
  /// - `Instance` (default): The ECS Instance.
  /// - `HaVip`: a highly available virtual IP address.
  /// - `RouterInterface`: indicates the router interface.
  /// - **Network interface**: ENI.
  /// - `VpnGateway`: the VPN gateway.
  /// - `IPv6Gateway`:IPv6 gateway.
  /// - `NatGateway`:NAT gateway.
  /// - `Attachment`: The forwarding router.
  /// - `VpcPeer`:VPC peer connection.
  /// - `Ipv4Gateway`:IPv4 Gateway.
  /// - `GatewayEndpoint`: the gateway endpoint.
  /// - `Ecr`: Leased line gateway.
  /// - `GatewayLoadBalancerEndpoint`: The Gateway-based load balancing endpoint.
  final pulumi.Input<String>? nexthopType;
  /// The name of the route entry.
  final pulumi.Input<String>? routeEntryName;
  /// Route publish status and publish target type See `route_publish_targets` below.
  final pulumi.Input<List<VPCRouteEntryRoutePublishTarget>>? routePublishTargets;
  /// Routing table ID
  final pulumi.Input<String>? routeTableId;
  /// The status of the route entry.
  final pulumi.Input<String>? status;

  /// Creates a new [VPCRouteEntryState].
  /// [description] Description of the route entry.
  /// [destinationCidrBlock] The destination network segment of the routing entry.
  /// [nextHops] Next jump See `next_hops` below.
  /// [nexthopId] The ID of the next hop instance of the custom route entry.
  /// [nexthopType] The type of the next hop of the custom route entry. Valid values:
  /// [routeEntryName] The name of the route entry.
  /// [routePublishTargets] Route publish status and publish target type See `route_publish_targets` below.
  /// [routeTableId] Routing table ID
  /// [status] The status of the route entry.
  VPCRouteEntryState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<List<VPCRouteEntryNextHop>>? nextHops,
    pulumi.Output<String>? nexthopId,
    pulumi.Output<String>? nexthopType,
    pulumi.Output<String>? routeEntryName,
    pulumi.Output<List<VPCRouteEntryRoutePublishTarget>>? routePublishTargets,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      nextHops = pulumi.Input.asOptionalInput<List<VPCRouteEntryNextHop>>(nextHops),
      nexthopId = pulumi.Input.asOptionalInput<String>(nexthopId),
      nexthopType = pulumi.Input.asOptionalInput<String>(nexthopType),
      routeEntryName = pulumi.Input.asOptionalInput<String>(routeEntryName),
      routePublishTargets = pulumi.Input.asOptionalInput<List<VPCRouteEntryRoutePublishTarget>>(routePublishTargets),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrBlock': ?destinationCidrBlock,
      'nextHops': ?pulumi.Input.mapOptionalInputValue<List<VPCRouteEntryNextHop>, List<Map<String, dynamic>>>(nextHops, (value) => pulumi.Input.encodeList<VPCRouteEntryNextHop, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'routeEntryName': ?routeEntryName,
      'routePublishTargets': ?pulumi.Input.mapOptionalInputValue<List<VPCRouteEntryRoutePublishTarget>, List<Map<String, dynamic>>>(routePublishTargets, (value) => pulumi.Input.encodeList<VPCRouteEntryRoutePublishTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableId': ?routeTableId,
      'status': ?status,
    };
  }

  factory VPCRouteEntryState.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      nextHops: map['nextHops'] == null ? null : pulumi.Output.create<List<VPCRouteEntryNextHop>>(pulumi.Input.decodeList<VPCRouteEntryNextHop>(map['nextHops'], (value) => VPCRouteEntryNextHop.fromMap((value as Map).cast<String, dynamic>()))),
      nexthopId: map['nexthopId'] == null ? null : pulumi.Output.create<String>(map['nexthopId'] as String),
      nexthopType: map['nexthopType'] == null ? null : pulumi.Output.create<String>(map['nexthopType'] as String),
      routeEntryName: map['routeEntryName'] == null ? null : pulumi.Output.create<String>(map['routeEntryName'] as String),
      routePublishTargets: map['routePublishTargets'] == null ? null : pulumi.Output.create<List<VPCRouteEntryRoutePublishTarget>>(pulumi.Input.decodeList<VPCRouteEntryRoutePublishTarget>(map['routePublishTargets'], (value) => VPCRouteEntryRoutePublishTarget.fromMap((value as Map).cast<String, dynamic>()))),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

