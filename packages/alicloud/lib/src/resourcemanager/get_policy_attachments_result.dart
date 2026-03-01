// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_attachments_attachment.dart';

/// Result data returned by getPolicyAttachments.
class GetPolicyAttachmentsResult {
  /// A list of Resource Manager Policy Attachment. Each element contains the following attributes:
  final List<GetPolicyAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Resource Manager Policy Attachment IDs.
  final List<String> ids;
  final String? language;
  final String? outputFile;
  /// The name of the policy.
  final String? policyName;
  /// The type of the policy.
  final String? policyType;
  /// The name of the object to which the policy is attached.
  final String? principalName;
  /// The type of the object to which the policy is attached.
  final String? principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  final String? resourceGroupId;

  /// Creates a new [GetPolicyAttachmentsResult].
  /// [attachments] A list of Resource Manager Policy Attachment. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Resource Manager Policy Attachment IDs.
  /// [language] Optional.
  /// [outputFile] Optional.
  /// [policyName] The name of the policy.
  /// [policyType] The type of the policy.
  /// [principalName] The name of the object to which the policy is attached.
  /// [principalType] The type of the object to which the policy is attached.
  /// [resourceGroupId] The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  GetPolicyAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.ids,
    this.language,
    this.outputFile,
    this.policyName,
    this.policyType,
    this.principalName,
    this.principalType,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetPolicyAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'language': ?language,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetPolicyAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetPolicyAttachmentsAttachment>(map['attachments'], (value) => GetPolicyAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      language: map['language'] == null ? null : map['language'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      principalName: map['principalName'] == null ? null : map['principalName'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
    );
  }
}

