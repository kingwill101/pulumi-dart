// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachments_slb_attachment.dart';

/// Result data returned by getAttachments.
class GetAttachmentsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? instanceIds;
  final String loadBalancerId;
  final String? outputFile;
  /// A list of SLB attachments. Each element contains the following attributes:
  final List<GetAttachmentsSlbAttachment> slbAttachments;

  /// Creates a new [GetAttachmentsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceIds] Optional.
  /// [loadBalancerId] Required.
  /// [outputFile] Optional.
  /// [slbAttachments] A list of SLB attachments. Each element contains the following attributes:
  GetAttachmentsResult({
    required this.id,
    this.instanceIds,
    required this.loadBalancerId,
    this.outputFile,
    required this.slbAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceIds': ?instanceIds,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
      'slbAttachments': pulumi.Input.encodeList<GetAttachmentsSlbAttachment, Map<String, dynamic>>(slbAttachments, (value) => value.toMap()),
    };
  }

  factory GetAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsResult(
      id: map['id'] as String,
      instanceIds: map['instanceIds'] == null ? null : (map['instanceIds']! as List).cast<String>(),
      loadBalancerId: map['loadBalancerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      slbAttachments: pulumi.Input.decodeList<GetAttachmentsSlbAttachment>(map['slbAttachments'], (value) => GetAttachmentsSlbAttachment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

