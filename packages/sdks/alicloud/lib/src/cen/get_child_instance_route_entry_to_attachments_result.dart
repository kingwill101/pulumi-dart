// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_child_instance_route_entry_to_attachments_attachment.dart';

/// Result data returned by getChildInstanceRouteEntryToAttachments.
class GetChildInstanceRouteEntryToAttachmentsResult {
  /// A list of Child Instance Route Entry To Attachment Entries. Each element contains the following attributes:
  final List<GetChildInstanceRouteEntryToAttachmentsAttachment> attachments;
  /// The ID of the CEN instance.
  final String? cenId;
  /// The first ID of the resource
  final String childInstanceRouteTableId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Limit search to a list of specific IDs.The value is formulated as `&lt;cen_id&gt;:&lt;child_instance_route_table_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;destination_cidr_block&gt;`.
  final List<String> ids;
  final String? outputFile;
  /// ServiceType
  final String? serviceType;
  /// TransitRouterAttachmentId
  final String transitRouterAttachmentId;

  /// Creates a new [GetChildInstanceRouteEntryToAttachmentsResult].
  /// [attachments] A list of Child Instance Route Entry To Attachment Entries. Each element contains the following attributes:
  /// [cenId] The ID of the CEN instance.
  /// [childInstanceRouteTableId] The first ID of the resource
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Limit search to a list of specific IDs.The value is formulated as `&lt;cen_id&gt;:&lt;child_instance_route_table_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;destination_cidr_block&gt;`.
  /// [outputFile] Optional.
  /// [serviceType] ServiceType
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  GetChildInstanceRouteEntryToAttachmentsResult({
    required this.attachments,
    this.cenId,
    required this.childInstanceRouteTableId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.serviceType,
    required this.transitRouterAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetChildInstanceRouteEntryToAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'cenId': ?cenId,
      'childInstanceRouteTableId': childInstanceRouteTableId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'serviceType': ?serviceType,
      'transitRouterAttachmentId': transitRouterAttachmentId,
    };
  }

  factory GetChildInstanceRouteEntryToAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetChildInstanceRouteEntryToAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetChildInstanceRouteEntryToAttachmentsAttachment>(map['attachments']!, (value) => GetChildInstanceRouteEntryToAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      childInstanceRouteTableId: map['childInstanceRouteTableId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
    );
  }
}

