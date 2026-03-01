// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyAttachment resources.
class PolicyAttachmentState {
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String>? policyName;
  /// The type of the policy. Valid values: `Custom`, `System`.
  final pulumi.Input<String>? policyType;
  /// The name of the object to which you want to attach the policy.
  final pulumi.Input<String>? principalName;
  /// The type of the object to which you want to attach the policy. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  final pulumi.Input<String>? principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [PolicyAttachmentState].
  /// [policyName] The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  /// [policyType] The type of the policy. Valid values: `Custom`, `System`.
  /// [principalName] The name of the object to which you want to attach the policy.
  /// [principalType] The type of the object to which you want to attach the policy. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  /// [resourceGroupId] The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs.
  PolicyAttachmentState({
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? principalName,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? resourceGroupId,
  }) :
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      principalName = pulumi.Input.asOptionalInput<String>(principalName),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'policyType': ?policyType,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory PolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentState(
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      principalName: map['principalName'] == null ? null : pulumi.Output.create<String>(map['principalName'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

