// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicyAttachment resources.
class UserPolicyAttachmentState {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String>? policyArn;
  /// The user the policy should be applied to
  final pulumi.Input<String>? user;

  /// Creates a new [UserPolicyAttachmentState].
  /// [policyArn] The ARN of the policy you want to apply
  /// [user] The user the policy should be applied to
  UserPolicyAttachmentState({
    pulumi.Output<String>? policyArn,
    pulumi.Output<String>? user,
  }) :
      policyArn = pulumi.Input.asOptionalInput<String>(policyArn),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArn': ?policyArn,
      'user': ?user,
    };
  }

  factory UserPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentState(
      policyArn: map['policyArn'] == null ? null : pulumi.Output.create<String>(map['policyArn'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

