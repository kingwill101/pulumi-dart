// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_policy_attachment_policy_attachment_args_doc}
/// The set of arguments for PolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_policy_attachment_policy_attachment_args_doc}
class PolicyAttachmentArgs {
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String> policyName;
  /// The type of the policy. Valid values: `Custom`, `System`.
  final pulumi.Input<String> policyType;
  /// The name of the object to which you want to attach the policy.
  final pulumi.Input<String> principalName;
  /// The type of the object to which you want to attach the policy. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  final pulumi.Input<String> principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [PolicyAttachmentArgs].
  /// [policyName] The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  /// [policyType] The type of the policy. Valid values: `Custom`, `System`.
  /// [principalName] The name of the object to which you want to attach the policy.
  /// [principalType] The type of the object to which you want to attach the policy. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  /// [resourceGroupId] The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  PolicyAttachmentArgs({
    required String policyName,
    required String policyType,
    required String principalName,
    required String principalType,
    required String resourceGroupId,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      policyType = pulumi.Input.asInput<String>(policyType),
      principalName = pulumi.Input.asInput<String>(principalName),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'policyType': policyType,
      'principalName': principalName,
      'principalType': principalType,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
    );
  }
}

