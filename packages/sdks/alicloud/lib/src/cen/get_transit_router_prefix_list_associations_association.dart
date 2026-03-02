// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterPrefixListAssociationsAssociation {
  /// The ID of the Cen Transit Router Prefix List Association. It formats as `<prefix_list_id>:<transit_router_id>:<transit_router_table_id>:<next_hop>`.
  final pulumi.Input<String> id;
  /// The ID of the next hop connection.
  final pulumi.Input<String> nextHop;
  /// The ID of the network instance associated with the next hop connection.
  final pulumi.Input<String> nextHopInstanceId;
  /// The type of the next hop.
  final pulumi.Input<String> nextHopType;
  /// The ID of the Alibaba Cloud account to which the prefix list belongs.
  final pulumi.Input<int> ownerUid;
  /// The ID of the prefix list.
  final pulumi.Input<String> prefixListId;
  /// The status of the prefix list.
  final pulumi.Input<String> status;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The ID of the route table of the transit router.
  final pulumi.Input<String> transitRouterTableId;

  /// Creates a new [GetTransitRouterPrefixListAssociationsAssociation].
  /// [id] The ID of the Cen Transit Router Prefix List Association. It formats as `<prefix_list_id>:<transit_router_id>:<transit_router_table_id>:<next_hop>`.
  /// [nextHop] The ID of the next hop connection.
  /// [nextHopInstanceId] The ID of the network instance associated with the next hop connection.
  /// [nextHopType] The type of the next hop.
  /// [ownerUid] The ID of the Alibaba Cloud account to which the prefix list belongs.
  /// [prefixListId] The ID of the prefix list.
  /// [status] The status of the prefix list.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterTableId] The ID of the route table of the transit router.
  GetTransitRouterPrefixListAssociationsAssociation({
    required this.id,
    required this.nextHop,
    required this.nextHopInstanceId,
    required this.nextHopType,
    required this.ownerUid,
    required this.prefixListId,
    required this.status,
    required this.transitRouterId,
    required this.transitRouterTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nextHop': nextHop,
      'nextHopInstanceId': nextHopInstanceId,
      'nextHopType': nextHopType,
      'ownerUid': ownerUid,
      'prefixListId': prefixListId,
      'status': status,
      'transitRouterId': transitRouterId,
      'transitRouterTableId': transitRouterTableId,
    };
  }

  factory GetTransitRouterPrefixListAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPrefixListAssociationsAssociation(
      id: (map['id'] as String).input(),
      nextHop: (map['nextHop'] as String).input(),
      nextHopInstanceId: (map['nextHopInstanceId'] as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
      ownerUid: (map['ownerUid'] as int).input(),
      prefixListId: (map['prefixListId'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterTableId: (map['transitRouterTableId'] as String).input(),
    );
  }
}

