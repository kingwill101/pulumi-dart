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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerUid: (() { final guardedValue = map['ownerUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterTableId: pulumi.Input.fromValue(map['transitRouterTableId'] as String),
    );
  }
}

