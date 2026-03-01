// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vpc_attachments_attachment.dart';

/// Result data returned by getTransitRouterVpcAttachments.
class GetTransitRouterVpcAttachmentsResult {
  /// A list of Transit Router VPC Attachments. Each element contains the following attributes:
  final List<GetTransitRouterVpcAttachmentsAttachment> attachments;
  /// (Available since v1.224.0) The ID of the CEN instance.
  final String cenId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Transit Router VPC Attachment names.
  final List<String> names;
  final String? outputFile;
  /// The status of the Transit Router VPC Attachment.
  final String? status;
  /// The ID of the Transit Router VPC Attachment.
  final String? transitRouterAttachmentId;
  /// (Available since v1.224.0) The ID of the transit router.
  final String? transitRouterId;
  /// The ID of the VPC.
  final String? vpcId;

  /// Creates a new [GetTransitRouterVpcAttachmentsResult].
  /// [attachments] A list of Transit Router VPC Attachments. Each element contains the following attributes:
  /// [cenId] (Available since v1.224.0) The ID of the CEN instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Transit Router VPC Attachment names.
  /// [outputFile] Optional.
  /// [status] The status of the Transit Router VPC Attachment.
  /// [transitRouterAttachmentId] The ID of the Transit Router VPC Attachment.
  /// [transitRouterId] (Available since v1.224.0) The ID of the transit router.
  /// [vpcId] The ID of the VPC.
  GetTransitRouterVpcAttachmentsResult({
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
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetTransitRouterVpcAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'cenId': cenId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
      'vpcId': ?vpcId,
    };
  }

  factory GetTransitRouterVpcAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpcAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetTransitRouterVpcAttachmentsAttachment>(map['attachments'], (value) => GetTransitRouterVpcAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

