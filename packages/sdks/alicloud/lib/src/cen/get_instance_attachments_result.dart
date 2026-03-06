// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_attachments_attachment.dart';

/// Result data returned by getInstanceAttachments.
class GetInstanceAttachmentsResult {
  /// A list of CEN Instance Attachments. Each element contains the following attributes:
  final List<GetInstanceAttachmentsAttachment> attachments;
  /// The ID of the region to which the network belongs.
  final String? childInstanceRegionId;
  /// The type of the associated network.
  final String? childInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Instance Attachment IDs.
  final List<String> ids;
  /// The ID of the CEN instance.
  final String instanceId;
  final String? outputFile;
  /// The status of the network.
  final String? status;

  /// Creates a new [GetInstanceAttachmentsResult].
  /// [attachments] A list of CEN Instance Attachments. Each element contains the following attributes:
  /// [childInstanceRegionId] The ID of the region to which the network belongs.
  /// [childInstanceType] The type of the associated network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Instance Attachment IDs.
  /// [instanceId] The ID of the CEN instance.
  /// [outputFile] Optional.
  /// [status] The status of the network.
  const GetInstanceAttachmentsResult({
    required this.attachments,
    this.childInstanceRegionId,
    this.childInstanceType,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetInstanceAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'childInstanceRegionId': ?childInstanceRegionId,
      'childInstanceType': ?childInstanceType,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetInstanceAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetInstanceAttachmentsAttachment>(map['attachments']!, (value) => GetInstanceAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      childInstanceRegionId: (() { final guardedValue = map['childInstanceRegionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      childInstanceType: (() { final guardedValue = map['childInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

