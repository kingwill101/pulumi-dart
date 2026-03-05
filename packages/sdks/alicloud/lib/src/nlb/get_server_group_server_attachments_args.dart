// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_get_server_group_server_attachments_get_server_group_server_attachments_args_doc}
/// Arguments for getServerGroupServerAttachments.
/// {@endtemplate}
/// {@macro pulumi_nlb_get_server_group_server_attachments_get_server_group_server_attachments_args_doc}
class GetServerGroupServerAttachmentsArgs {
  /// A list of Server Group Server Attachment IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the server group.
  final pulumi.Input<String>? serverGroupId;
  /// The IDs of the servers. You can specify at most 40 server IDs in each call.
  final pulumi.Input<List<String>>? serverIds;
  /// The IP addresses of the servers. You can specify at most 40 server IP addresses in each call.
  final pulumi.Input<List<String>>? serverIps;

  /// Creates a new [GetServerGroupServerAttachmentsArgs].
  /// [ids] A list of Server Group Server Attachment IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serverGroupId] The ID of the server group.
  /// [serverIds] The IDs of the servers. You can specify at most 40 server IDs in each call.
  /// [serverIps] The IP addresses of the servers. You can specify at most 40 server IP addresses in each call.
  GetServerGroupServerAttachmentsArgs({
    this.ids,
    this.outputFile,
    this.serverGroupId,
    this.serverIds,
    this.serverIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'serverGroupId': ?serverGroupId,
      'serverIds': ?serverIds,
      'serverIps': ?serverIps,
    };
  }

  factory GetServerGroupServerAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupServerAttachmentsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverIds: (() { final guardedValue = map['serverIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverIps: (() { final guardedValue = map['serverIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

