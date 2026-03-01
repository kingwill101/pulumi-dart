// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_control_policy_attachments_get_control_policy_attachments_args_doc}
/// Arguments for getControlPolicyAttachments.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_control_policy_attachments_get_control_policy_attachments_args_doc}
class GetControlPolicyAttachmentsArgs {
  /// The language. Valid value `zh-CN`, `en`, and `ja`. Default value `zh-CN`
  final pulumi.Input<String>? language;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The policy type of control policy. Valid values: `Custom` and `System`.
  final pulumi.Input<String>? policyType;
  /// The Id of target.
  final pulumi.Input<String> targetId;

  /// Creates a new [GetControlPolicyAttachmentsArgs].
  /// [language] The language. Valid value `zh-CN`, `en`, and `ja`. Default value `zh-CN`
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyType] The policy type of control policy. Valid values: `Custom` and `System`.
  /// [targetId] The Id of target.
  GetControlPolicyAttachmentsArgs({
    String? language,
    String? outputFile,
    String? policyType,
    required String targetId,
  }) :
      language = pulumi.Input.asOptionalInput<String>(language),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': ?language,
      'outputFile': ?outputFile,
      'policyType': ?policyType,
      'targetId': targetId,
    };
  }

  factory GetControlPolicyAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetControlPolicyAttachmentsArgs(
      language: map['language'] == null ? null : map['language'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

