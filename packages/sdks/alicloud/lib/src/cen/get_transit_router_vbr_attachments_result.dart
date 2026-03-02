// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vbr_attachments_attachment.dart';

/// Result data returned by getTransitRouterVbrAttachments.
class GetTransitRouterVbrAttachmentsResult {
  /// A list of CEN Transit Router VBR Attachments. Each element contains the following attributes:
  final List<GetTransitRouterVbrAttachmentsAttachment> attachments;
  final String cenId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Transit Router VBR attachment IDs.
  final List<String> ids;
  final String? outputFile;
  /// The status of the transit router attachment.
  final String? status;
  final String? transitRouterId;

  /// Creates a new [GetTransitRouterVbrAttachmentsResult].
  /// [attachments] A list of CEN Transit Router VBR Attachments. Each element contains the following attributes:
  /// [cenId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Transit Router VBR attachment IDs.
  /// [outputFile] Optional.
  /// [status] The status of the transit router attachment.
  /// [transitRouterId] Optional.
  GetTransitRouterVbrAttachmentsResult({
    required this.attachments,
    required this.cenId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetTransitRouterVbrAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'cenId': cenId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetTransitRouterVbrAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVbrAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetTransitRouterVbrAttachmentsAttachment>(map['attachments'], (value) => GetTransitRouterVbrAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId']! as String,
    );
  }
}

