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
  RolePolicyAttachmentState({this.policyArn, this.role});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policyArn': ?policyArn, 'role': ?role};
  }

  factory RolePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentState(
      policyArn: (() {
        final guardedValue = map['policyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
