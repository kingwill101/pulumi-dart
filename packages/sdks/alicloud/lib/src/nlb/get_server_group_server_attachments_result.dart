// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_group_server_attachments_attachment.dart';

/// Result data returned by getServerGroupServerAttachments.
class GetServerGroupServerAttachmentsResult {
  /// A list of Nlb Server Group Server Attachments. Each element contains the following attributes:
  final List<GetServerGroupServerAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The ID of the server group.
  final String? serverGroupId;
  final List<String>? serverIds;
  final List<String>? serverIps;

  /// Creates a new [GetServerGroupServerAttachmentsResult].
  /// [attachments] A list of Nlb Server Group Server Attachments. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [serverGroupId] The ID of the server group.
  /// [serverIds] Optional.
  /// [serverIps] Optional.
  GetServerGroupServerAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.ids,
    this.outputFile,
    this.serverGroupId,
    this.serverIds,
    this.serverIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetServerGroupServerAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'serverGroupId': ?serverGroupId,
      'serverIds': ?serverIds,
      'serverIps': ?serverIps,
    };
  }

  factory GetServerGroupServerAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupServerAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetServerGroupServerAttachmentsAttachment>(map['attachments'], (value) => GetServerGroupServerAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId']! as String,
      serverIds: map['serverIds'] == null ? null : (map['serverIds']! as List).cast<String>(),
      serverIps: map['serverIps'] == null ? null : (map['serverIps']! as List).cast<String>(),
    );
  }
}

