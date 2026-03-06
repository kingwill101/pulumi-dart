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
  const GetServerGroupServerAttachmentsResult({
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
      attachments: pulumi.Input.decodeList<GetServerGroupServerAttachmentsAttachment>(map['attachments']!, (value) => GetServerGroupServerAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverIds: (() { final guardedValue = map['serverIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serverIps: (() { final guardedValue = map['serverIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

