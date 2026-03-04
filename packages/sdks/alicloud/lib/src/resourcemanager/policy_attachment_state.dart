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
    this.policyName,
    this.policyType,
    this.principalName,
    this.principalType,
    this.resourceGroupId,
  });

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
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalName: (() {
        final guardedValue = map['principalName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalType: (() {
        final guardedValue = map['principalType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
