// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_prefix_list_associations_association.dart';

/// Result data returned by getTransitRouterPrefixListAssociations.
class GetTransitRouterPrefixListAssociationsResult {
  final List<GetTransitRouterPrefixListAssociationsAssociation> associations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? ownerUid;
  final int? pageNumber;
  final int? pageSize;
  final String? prefixListId;
  final String? status;
  final String transitRouterId;
  final String transitRouterTableId;

  /// Creates a new [GetTransitRouterPrefixListAssociationsResult].
  /// [associations] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [ownerUid] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [prefixListId] Optional.
  /// [status] Optional.
  /// [transitRouterId] Required.
  /// [transitRouterTableId] Required.
  GetTransitRouterPrefixListAssociationsResult({
    required this.associations,
    required this.id,
    required this.ids,
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
      'associations': pulumi.Input.encodeList<GetTransitRouterPrefixListAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
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

  factory GetTransitRouterPrefixListAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPrefixListAssociationsResult(
      associations: pulumi.Input.decodeList<GetTransitRouterPrefixListAssociationsAssociation>(map['associations']!, (value) => GetTransitRouterPrefixListAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerUid: (() { final guardedValue = map['ownerUid']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterId: map['transitRouterId'] as String,
      transitRouterTableId: map['transitRouterTableId'] as String,
    );
  }
}

