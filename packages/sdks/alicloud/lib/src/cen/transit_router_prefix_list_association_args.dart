// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_prefix_list_association_transit_router_prefix_list_association_args_doc}
/// The set of arguments for TransitRouterPrefixListAssociation.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_prefix_list_association_transit_router_prefix_list_association_args_doc}
class TransitRouterPrefixListAssociationArgs {
  /// The ID of the next hop. **NOTE:** If `next_hop` is set to `BlackHole`, you must set this parameter to `BlackHole`.
  final pulumi.Input<String> nextHop;
  /// The type of the next hop. Valid values:
  /// - `BlackHole`: Specifies that all the CIDR blocks in the prefix list are blackhole routes. Packets destined for the CIDR blocks are dropped.
  /// - `VPC`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual private cloud (VPC) connection.
  /// - `VBR`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual border router (VBR) connection.
  /// - `TR`: Specifies that the next hop of the CIDR blocks in the prefix list is an inter-region connection.
  final pulumi.Input<String>? nextHopType;
  /// The ID of the Alibaba Cloud account to which the prefix list belongs.
  final pulumi.Input<int>? ownerUid;
  /// The ID of the prefix list.
  final pulumi.Input<String> prefixListId;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The ID of the route table of the transit router.
  final pulumi.Input<String> transitRouterTableId;

  /// Creates a new [TransitRouterPrefixListAssociationArgs].
  /// [nextHop] The ID of the next hop. **NOTE:** If `next_hop` is set to `BlackHole`, you must set this parameter to `BlackHole`.
  /// [nextHopType] The type of the next hop. Valid values:
  /// [ownerUid] The ID of the Alibaba Cloud account to which the prefix list belongs.
  /// [prefixListId] The ID of the prefix list.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterTableId] The ID of the route table of the transit router.
  TransitRouterPrefixListAssociationArgs({
    required this.nextHop,
    this.nextHopType,
    this.ownerUid,
    required this.prefixListId,
    required this.transitRouterId,
    required this.transitRouterTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': nextHop,
      'nextHopType': ?nextHopType,
      'ownerUid': ?ownerUid,
      'prefixListId': prefixListId,
      'transitRouterId': transitRouterId,
      'transitRouterTableId': transitRouterTableId,
    };
  }

  factory TransitRouterPrefixListAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterPrefixListAssociationArgs(
      nextHop: (map['nextHop'] as String).input(),
      nextHopType: map['nextHopType'] == null ? null : (map['nextHopType']! as String).input(),
      ownerUid: map['ownerUid'] == null ? null : (map['ownerUid']! as int).input(),
      prefixListId: (map['prefixListId'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterTableId: (map['transitRouterTableId'] as String).input(),
    );
  }
}

