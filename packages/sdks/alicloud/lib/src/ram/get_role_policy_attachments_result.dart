// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_policy_attachments_attachment.dart';

/// Result data returned by getRolePolicyAttachments.
class GetRolePolicyAttachmentsResult {
  /// A list of Role Policy Attachment Entries. Each element contains the following attributes:
  final List<GetRolePolicyAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Role Policy Attachment IDs.
  final List<String> ids;
  final String? outputFile;
  final String roleName;

  /// Creates a new [GetRolePolicyAttachmentsResult].
  /// [attachments] A list of Role Policy Attachment Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Role Policy Attachment IDs.
  /// [outputFile] Optional.
  /// [roleName] Required.
  GetRolePolicyAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetRolePolicyAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'roleName': roleName,
    };
  }

  factory GetRolePolicyAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetRolePolicyAttachmentsAttachment>(map['attachments'], (value) => GetRolePolicyAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      roleName: map['roleName'] as String,
    );
  }
}

