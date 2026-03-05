// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_route_table_associations_association.dart';

/// Result data returned by getTransitRouterRouteTableAssociations.
class GetTransitRouterRouteTableAssociationsResult {
  /// A list of CEN Transit Router Route Table Associations. Each element contains the following attributes:
  final List<GetTransitRouterRouteTableAssociationsAssociation> associations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Transit Router Route Table Association IDs.
  final List<String> ids;
  final String? outputFile;
  /// The status of the route table.
  final String? status;
  /// ID of the transit router attachment.
  final String? transitRouterAttachmentId;
  final String? transitRouterAttachmentResourceId;
  final String? transitRouterAttachmentResourceType;
  /// ID of the transit router route table.
  final String? transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteTableAssociationsResult].
  /// [associations] A list of CEN Transit Router Route Table Associations. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Transit Router Route Table Association IDs.
  /// [outputFile] Optional.
  /// [status] The status of the route table.
  /// [transitRouterAttachmentId] ID of the transit router attachment.
  /// [transitRouterAttachmentResourceId] Optional.
  /// [transitRouterAttachmentResourceType] Optional.
  /// [transitRouterRouteTableId] ID of the transit router route table.
  GetTransitRouterRouteTableAssociationsResult({
    required this.associations,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterAttachmentResourceId,
    this.transitRouterAttachmentResourceType,
    this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<GetTransitRouterRouteTableAssociationsAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterAttachmentResourceId': ?transitRouterAttachmentResourceId,
      'transitRouterAttachmentResourceType': ?transitRouterAttachmentResourceType,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteTableAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTableAssociationsResult(
      associations: pulumi.Input.decodeList<GetTransitRouterRouteTableAssociationsAssociation>(map['associations']!, (value) => GetTransitRouterRouteTableAssociationsAssociation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentResourceId: (() { final guardedValue = map['transitRouterAttachmentResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentResourceType: (() { final guardedValue = map['transitRouterAttachmentResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterRouteTableId: (() { final guardedValue = map['transitRouterRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

