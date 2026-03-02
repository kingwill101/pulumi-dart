// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpcroute_entry_next_hop.dart';
import 'vpcroute_entry_route_publish_target.dart';

/// {@template pulumi_vpc_v_pcroute_entry_vpcroute_entry_args_doc}
/// The set of arguments for VPCRouteEntry.
/// {@endtemplate}
/// {@macro pulumi_vpc_v_pcroute_entry_vpcroute_entry_args_doc}
class VPCRouteEntryArgs {
  /// Description of the route entry.
  final pulumi.Input<String>? description;
  /// The destination network segment of the routing entry.
  final pulumi.Input<String> destinationCidrBlock;
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
  final pulumi.Input<String> routeTableId;

  /// Creates a new [VPCRouteEntryArgs].
  /// [description] Description of the route entry.
  /// [destinationCidrBlock] The destination network segment of the routing entry.
  /// [nextHops] Next jump See `next_hops` below.
  /// [nexthopId] The ID of the next hop instance of the custom route entry.
  /// [nexthopType] The type of the next hop of the custom route entry. Valid values:
  /// [routeEntryName] The name of the route entry.
  /// [routePublishTargets] Route publish status and publish target type See `route_publish_targets` below.
  /// [routeTableId] Routing table ID
  VPCRouteEntryArgs({
    this.description,
    required this.destinationCidrBlock,
    this.nextHops,
    this.nexthopId,
    this.nexthopType,
    this.routeEntryName,
    this.routePublishTargets,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrBlock': destinationCidrBlock,
      'nextHops': ?pulumi.Input.mapOptionalInputValue<List<VPCRouteEntryNextHop>, List<Map<String, dynamic>>>(nextHops, (value) => pulumi.Input.encodeList<VPCRouteEntryNextHop, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'routeEntryName': ?routeEntryName,
      'routePublishTargets': ?pulumi.Input.mapOptionalInputValue<List<VPCRouteEntryRoutePublishTarget>, List<Map<String, dynamic>>>(routePublishTargets, (value) => pulumi.Input.encodeList<VPCRouteEntryRoutePublishTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableId': routeTableId,
    };
  }

  factory VPCRouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationCidrBlock: (map['destinationCidrBlock'] as String).input(),
      nextHops: map['nextHops'] == null ? null : (pulumi.Input.decodeList<VPCRouteEntryNextHop>(map['nextHops'], (value) => VPCRouteEntryNextHop.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nexthopId: map['nexthopId'] == null ? null : (map['nexthopId'] as String).input(),
      nexthopType: map['nexthopType'] == null ? null : (map['nexthopType'] as String).input(),
      routeEntryName: map['routeEntryName'] == null ? null : (map['routeEntryName'] as String).input(),
      routePublishTargets: map['routePublishTargets'] == null ? null : (pulumi.Input.decodeList<VPCRouteEntryRoutePublishTarget>(map['routePublishTargets'], (value) => VPCRouteEntryRoutePublishTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeTableId: (map['routeTableId'] as String).input(),
    );
  }
}

