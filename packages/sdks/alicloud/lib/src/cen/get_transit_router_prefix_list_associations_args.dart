// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_prefix_list_associations_get_transit_router_prefix_list_associations_args_doc}
/// Arguments for getTransitRouterPrefixListAssociations.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_prefix_list_associations_get_transit_router_prefix_list_associations_args_doc}
class GetTransitRouterPrefixListAssociationsArgs {
  /// A list of Cen Transit Router Prefix List Association IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the Alibaba Cloud account to which the prefix list belongs.
  final pulumi.Input<int>? ownerUid;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The ID of the prefix list.
  final pulumi.Input<String>? prefixListId;
  /// The status of the prefix list. Valid Value: `Active`, `Updating`.
  final pulumi.Input<String>? status;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The ID of the route table of the transit router.
  final pulumi.Input<String> transitRouterTableId;

  /// Creates a new [GetTransitRouterPrefixListAssociationsArgs].
  /// [ids] A list of Cen Transit Router Prefix List Association IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [ownerUid] The ID of the Alibaba Cloud account to which the prefix list belongs.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [prefixListId] The ID of the prefix list.
  /// [status] The status of the prefix list. Valid Value: `Active`, `Updating`.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterTableId] The ID of the route table of the transit router.
  GetTransitRouterPrefixListAssociationsArgs({
    this.ids,
    this.outputFile,
    this.ownerUid,
    this.pageNumber,
    this.pageSize,
    this.prefixListId,
    this.status,
    required this.transitRouterId,
    required this.transitRouterTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'ownerUid': ?ownerUid,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'prefixListId': ?prefixListId,
      'status': ?status,
      'transitRouterId': transitRouterId,
      'transitRouterTableId': transitRouterTableId,
    };
  }

  factory GetTransitRouterPrefixListAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPrefixListAssociationsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      ownerUid: map['ownerUid'] == null ? null : (map['ownerUid']! as int).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterTableId: (map['transitRouterTableId'] as String).input(),
    );
  }
}

