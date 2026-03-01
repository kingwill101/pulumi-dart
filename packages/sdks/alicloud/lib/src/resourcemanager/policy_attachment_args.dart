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
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> policyType,
    required pulumi.Output<String> principalName,
    required pulumi.Output<String> principalType,
    required pulumi.Output<String> resourceGroupId,
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
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      policyType: pulumi.Output.create<String>(map['policyType'] as String),
      principalName: pulumi.Output.create<String>(map['principalName'] as String),
      principalType: pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupId: pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

