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
  const VPCRouteEntryState({
    this.description,
    this.destinationCidrBlock,
    this.nextHops,
    this.nexthopId,
    this.nexthopType,
    this.routeEntryName,
    this.routePublishTargets,
    this.routeTableId,
    this.status,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHops: (() { final guardedValue = map['nextHops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VPCRouteEntryNextHop>(guardedValue, (value) => VPCRouteEntryNextHop.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nexthopId: (() { final guardedValue = map['nexthopId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nexthopType: (() { final guardedValue = map['nexthopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeEntryName: (() { final guardedValue = map['routeEntryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routePublishTargets: (() { final guardedValue = map['routePublishTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VPCRouteEntryRoutePublishTarget>(guardedValue, (value) => VPCRouteEntryRoutePublishTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

