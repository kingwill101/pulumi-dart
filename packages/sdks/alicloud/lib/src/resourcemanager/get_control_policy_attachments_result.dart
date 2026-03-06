// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_policy_attachments_attachment.dart';

/// Result data returned by getControlPolicyAttachments.
class GetControlPolicyAttachmentsResult {
  final List<GetControlPolicyAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? language;
  final String? outputFile;
  final String? policyType;
  final String targetId;

  /// Creates a new [GetControlPolicyAttachmentsResult].
  /// [attachments] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [language] Optional.
  /// [outputFile] Optional.
  /// [policyType] Optional.
  /// [targetId] Required.
  const GetControlPolicyAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.ids,
    this.language,
    this.outputFile,
    this.policyType,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetControlPolicyAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'language': ?language,
      'outputFile': ?outputFile,
      'policyType': ?policyType,
      'targetId': targetId,
    };
  }

  factory GetControlPolicyAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetControlPolicyAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetControlPolicyAttachmentsAttachment>(map['attachments']!, (value) => GetControlPolicyAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetId: map['targetId'] as String,
    );
  }
}

