// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_vpn_attachments_attachment.dart';

/// Result data returned by getGatewayVpnAttachments.
class GetGatewayVpnAttachmentsResult {
  /// A list of Vpn Attachment Entries. Each element contains the following attributes:
  final List<GetGatewayVpnAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpn Attachment IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Vpn Attachments.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The negotiation status of Tunnel. - **ike_sa_not_established**: Phase 1 negotiations failed.- **ike_sa_established**: Phase 1 negotiations succeeded.- **ipsec_sa_not_established**: Phase 2 negotiations failed.- **ipsec_sa_established**: Phase 2 negotiations succeeded.
  final String? status;

  /// Creates a new [GetGatewayVpnAttachmentsResult].
  /// [attachments] A list of Vpn Attachment Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpn Attachment IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Vpn Attachments.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The negotiation status of Tunnel. - **ike_sa_not_established**: Phase 1 negotiations failed.- **ike_sa_established**: Phase 1 negotiations succeeded.- **ipsec_sa_not_established**: Phase 2 negotiations failed.- **ipsec_sa_established**: Phase 2 negotiations succeeded.
  GetGatewayVpnAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetGatewayVpnAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachment>(map['attachments'], (value) => GetGatewayVpnAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

