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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? ownerUid,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? status,
    required pulumi.Output<String> transitRouterId,
    required pulumi.Output<String> transitRouterTableId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      ownerUid = pulumi.Input.asOptionalInput<int>(ownerUid),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterTableId = pulumi.Input.asInput<String>(transitRouterTableId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      ownerUid: map['ownerUid'] == null ? null : pulumi.Output.create<int>(map['ownerUid'] as int),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterTableId: pulumi.Output.create<String>(map['transitRouterTableId'] as String),
    );
  }
}

