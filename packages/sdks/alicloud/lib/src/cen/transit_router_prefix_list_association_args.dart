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
    required pulumi.Output<String> nextHop,
    pulumi.Output<String>? nextHopType,
    pulumi.Output<int>? ownerUid,
    required pulumi.Output<String> prefixListId,
    required pulumi.Output<String> transitRouterId,
    required pulumi.Output<String> transitRouterTableId,
  }) :
      nextHop = pulumi.Input.asInput<String>(nextHop),
      nextHopType = pulumi.Input.asOptionalInput<String>(nextHopType),
      ownerUid = pulumi.Input.asOptionalInput<int>(ownerUid),
      prefixListId = pulumi.Input.asInput<String>(prefixListId),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterTableId = pulumi.Input.asInput<String>(transitRouterTableId);

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
      nextHop: pulumi.Output.create<String>(map['nextHop'] as String),
      nextHopType: map['nextHopType'] == null ? null : pulumi.Output.create<String>(map['nextHopType'] as String),
      ownerUid: map['ownerUid'] == null ? null : pulumi.Output.create<int>(map['ownerUid'] as int),
      prefixListId: pulumi.Output.create<String>(map['prefixListId'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterTableId: pulumi.Output.create<String>(map['transitRouterTableId'] as String),
    );
  }
}

