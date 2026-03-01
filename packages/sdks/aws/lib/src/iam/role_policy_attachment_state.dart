// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePolicyAttachment resources.
class RolePolicyAttachmentState {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String>? policyArn;
  /// The name of the IAM role to which the policy should be applied
  final pulumi.Input<String>? role;

  /// Creates a new [RolePolicyAttachmentState].
  /// [policyArn] The ARN of the policy you want to apply
  /// [role] The name of the IAM role to which the policy should be applied
  RolePolicyAttachmentState({
    pulumi.Output<String>? policyArn,
    pulumi.Output<String>? role,
  }) :
      policyArn = pulumi.Input.asOptionalInput<String>(policyArn),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArn': ?policyArn,
      'role': ?role,
    };
  }

  factory RolePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentState(
      policyArn: map['policyArn'] == null ? null : pulumi.Output.create<String>(map['policyArn'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

