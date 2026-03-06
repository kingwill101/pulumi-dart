// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_peer_attachments_attachment.dart';

/// Result data returned by getTransitRouterPeerAttachments.
class GetTransitRouterPeerAttachmentsResult {
  final List<GetTransitRouterPeerAttachmentsAttachment> attachments;
  final String cenId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Transit Router peer attachments IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of CEN Transit Router peer attachments names.
  final List<String> names;
  final String? outputFile;
  /// The status of the transit router attachment.
  final String? status;
  /// ID of the transit router attachment.
  final String? transitRouterAttachmentId;
  /// ID of the transit router.
  final String? transitRouterId;

  /// Creates a new [GetTransitRouterPeerAttachmentsResult].
  /// [attachments] Required.
  /// [cenId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Transit Router peer attachments IDs.
  /// [nameRegex] Optional.
  /// [names] A list of CEN Transit Router peer attachments names.
  /// [outputFile] Optional.
  /// [status] The status of the transit router attachment.
  /// [transitRouterAttachmentId] ID of the transit router attachment.
  /// [transitRouterId] ID of the transit router.
  const GetTransitRouterPeerAttachmentsResult({
    required this.attachments,
    required this.cenId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetTransitRouterPeerAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'cenId': cenId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetTransitRouterPeerAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPeerAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetTransitRouterPeerAttachmentsAttachment>(map['attachments']!, (value) => GetTransitRouterPeerAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

