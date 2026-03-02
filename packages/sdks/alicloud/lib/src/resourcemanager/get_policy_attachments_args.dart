// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_policy_attachments_get_policy_attachments_args_doc}
/// Arguments for getPolicyAttachments.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_policy_attachments_get_policy_attachments_args_doc}
class GetPolicyAttachmentsArgs {
  /// The language that is used to return the description of the system policy. Valid values:`en`: English, `zh-CN`: Chinese, `ja`: Japanese.
  final pulumi.Input<String>? language;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the policy. The name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String>? policyName;
  /// The type of the policy. Valid values: `Custom` and `System`.
  final pulumi.Input<String>? policyType;
  /// The name of the object to which the policy is attached.
  final pulumi.Input<String>? principalName;
  /// The type of the object to which the policy is attached. If you do not specify this parameter, the system lists all types of objects. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  final pulumi.Input<String>? principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs. If you do not specify this parameter, the system lists all policy attachment records under the current account.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [GetPolicyAttachmentsArgs].
  /// [language] The language that is used to return the description of the system policy. Valid values:`en`: English, `zh-CN`: Chinese, `ja`: Japanese.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyName] The name of the policy. The name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  /// [policyType] The type of the policy. Valid values: `Custom` and `System`.
  /// [principalName] The name of the object to which the policy is attached.
  /// [principalType] The type of the object to which the policy is attached. If you do not specify this parameter, the system lists all types of objects. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  /// [resourceGroupId] The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs. If you do not specify this parameter, the system lists all policy attachment records under the current account.
  GetPolicyAttachmentsArgs({
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
      'language': ?language,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetPolicyAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyAttachmentsArgs(
      language: map['language'] == null ? null : (map['language'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      principalName: map['principalName'] == null ? null : (map['principalName'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
    );
  }
}

