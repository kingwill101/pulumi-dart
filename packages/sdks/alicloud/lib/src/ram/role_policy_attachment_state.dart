// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePolicyAttachment resources.
class RolePolicyAttachmentState {
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String>? policyType;
  /// The RAM role name.
  final pulumi.Input<String>? roleName;

  /// Creates a new [RolePolicyAttachmentState].
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.
  /// [roleName] The RAM role name.
  RolePolicyAttachmentState({
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? roleName,
  }) :
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      roleName = pulumi.Input.asOptionalInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'policyType': ?policyType,
      'roleName': ?roleName,
    };
  }

  factory RolePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentState(
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

