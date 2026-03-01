// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterPrefixListAssociation resources.
class TransitRouterPrefixListAssociationState {
  /// The ID of the next hop. **NOTE:** If `next_hop` is set to `BlackHole`, you must set this parameter to `BlackHole`.
  final pulumi.Input<String>? nextHop;
  /// The type of the next hop. Valid values:
  /// - `BlackHole`: Specifies that all the CIDR blocks in the prefix list are blackhole routes. Packets destined for the CIDR blocks are dropped.
  /// - `VPC`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual private cloud (VPC) connection.
  /// - `VBR`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual border router (VBR) connection.
  /// - `TR`: Specifies that the next hop of the CIDR blocks in the prefix list is an inter-region connection.
  final pulumi.Input<String>? nextHopType;
  /// The ID of the Alibaba Cloud account to which the prefix list belongs.
  final pulumi.Input<int>? ownerUid;
  /// The ID of the prefix list.
  final pulumi.Input<String>? prefixListId;
  /// The status of the prefix list.
  final pulumi.Input<String>? status;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the route table of the transit router.
  final pulumi.Input<String>? transitRouterTableId;

  /// Creates a new [TransitRouterPrefixListAssociationState].
  /// [nextHop] The ID of the next hop. **NOTE:** If `next_hop` is set to `BlackHole`, you must set this parameter to `BlackHole`.
  /// [nextHopType] The type of the next hop. Valid values:
  /// [ownerUid] The ID of the Alibaba Cloud account to which the prefix list belongs.
  /// [prefixListId] The ID of the prefix list.
  /// [status] The status of the prefix list.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterTableId] The ID of the route table of the transit router.
  TransitRouterPrefixListAssociationState({
    pulumi.Output<String>? nextHop,
    pulumi.Output<String>? nextHopType,
    pulumi.Output<int>? ownerUid,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterTableId,
  }) :
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      nextHopType = pulumi.Input.asOptionalInput<String>(nextHopType),
      ownerUid = pulumi.Input.asOptionalInput<int>(ownerUid),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterTableId = pulumi.Input.asOptionalInput<String>(transitRouterTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': ?nextHop,
      'nextHopType': ?nextHopType,
      'ownerUid': ?ownerUid,
      'prefixListId': ?prefixListId,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
      'transitRouterTableId': ?transitRouterTableId,
    };
  }

  factory TransitRouterPrefixListAssociationState.fromMap(Map<String, dynamic> map) {
    return TransitRouterPrefixListAssociationState(
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      nextHopType: map['nextHopType'] == null ? null : pulumi.Output.create<String>(map['nextHopType'] as String),
      ownerUid: map['ownerUid'] == null ? null : pulumi.Output.create<int>(map['ownerUid'] as int),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterTableId: map['transitRouterTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterTableId'] as String),
    );
  }
}

