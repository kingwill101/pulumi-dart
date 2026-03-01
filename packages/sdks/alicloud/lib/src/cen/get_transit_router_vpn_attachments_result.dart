// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vpn_attachments_attachment.dart';

/// Result data returned by getTransitRouterVpnAttachments.
class GetTransitRouterVpnAttachmentsResult {
  /// A list of Transit Router Vpn Attachment Entries. Each element contains the following attributes:
  final List<GetTransitRouterVpnAttachmentsAttachment> attachments;
  /// (Available since v1.245.0) The ID of the Cloud Enterprise Network (CEN) instance.
  final String? cenId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Transit Router Vpn Attachments.
  final List<String> names;
  final String? outputFile;
  /// The status of the VPN connection.
  final String? status;
  /// (Available since v1.245.0) The tag of the resource.
  final Map<String, String>? tags;
  /// (Available since v1.245.0) The ID of the VPN attachment.
  final String? transitRouterAttachmentId;
  /// The ID of the transit router.
  final String? transitRouterId;

  /// Creates a new [GetTransitRouterVpnAttachmentsResult].
  /// [attachments] A list of Transit Router Vpn Attachment Entries. Each element contains the following attributes:
  /// [cenId] (Available since v1.245.0) The ID of the Cloud Enterprise Network (CEN) instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of name of Transit Router Vpn Attachments.
  /// [outputFile] Optional.
  /// [status] The status of the VPN connection.
  /// [tags] (Available since v1.245.0) The tag of the resource.
  /// [transitRouterAttachmentId] (Available since v1.245.0) The ID of the VPN attachment.
  /// [transitRouterId] The ID of the transit router.
  GetTransitRouterVpnAttachmentsResult({
    required this.attachments,
    this.cenId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.tags,
    this.transitRouterAttachmentId,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetTransitRouterVpnAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'cenId': ?cenId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetTransitRouterVpnAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpnAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetTransitRouterVpnAttachmentsAttachment>(map['attachments'], (value) => GetTransitRouterVpnAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
    );
  }
}

