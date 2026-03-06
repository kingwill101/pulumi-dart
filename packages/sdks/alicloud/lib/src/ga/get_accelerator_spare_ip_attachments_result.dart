// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerator_spare_ip_attachments_attachment.dart';

/// Result data returned by getAcceleratorSpareIpAttachments.
class GetAcceleratorSpareIpAttachmentsResult {
  /// The ID of the global acceleration instance.
  final String acceleratorId;
  /// A list of Ga Accelerator Spare Ip Attachments. Each element contains the following attributes:
  final List<GetAcceleratorSpareIpAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  final String? status;

  /// Creates a new [GetAcceleratorSpareIpAttachmentsResult].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [attachments] A list of Ga Accelerator Spare Ip Attachments. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  const GetAcceleratorSpareIpAttachmentsResult({
    required this.acceleratorId,
    required this.attachments,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'attachments': pulumi.Input.encodeList<GetAcceleratorSpareIpAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAcceleratorSpareIpAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorSpareIpAttachmentsResult(
      acceleratorId: map['acceleratorId'] as String,
      attachments: pulumi.Input.decodeList<GetAcceleratorSpareIpAttachmentsAttachment>(map['attachments']!, (value) => GetAcceleratorSpareIpAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

